#define MAX_DEVICES_OPEN    10

struct libusb_device_handle;
typedef struct libusb_device_handle libusb_device_handle;

libusb_device_handle *open_devices[MAX_DEVICES_OPEN];
int devices_open;

void initialize(void);
void deinitialize(void);
void set_debug(int level);
int open_device(unsigned int vendorID, unsigned int productID, int n);
int close_device(int device);
int num_devices_open(void);
int control_transfer(int device, unsigned char bmRequestType, unsigned char bRequest, unsigned int wValue, unsigned int wIndex, unsigned int wLength, unsigned char *buffer);
