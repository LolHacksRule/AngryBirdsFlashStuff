package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var mCharCode:uint;
      
      private var mKeyCode:uint;
      
      private var mKeyLocation:uint;
      
      private var mAltKey:Boolean;
      
      private var mCtrlKey:Boolean;
      
      private var mShiftKey:Boolean;
      
      public function KeyboardEvent(type:String, charCode:uint = 0, keyCode:uint = 0, keyLocation:uint = 0, ctrlKey:Boolean = false, altKey:Boolean = false, shiftKey:Boolean = false)
      {
         super(type,false,keyCode);
         this.mCharCode = charCode;
         this.mKeyCode = keyCode;
         this.mKeyLocation = keyLocation;
         this.mCtrlKey = ctrlKey;
         this.mAltKey = altKey;
         this.mShiftKey = shiftKey;
      }
      
      public function get charCode() : uint
      {
         return this.mCharCode;
      }
      
      public function get keyCode() : uint
      {
         return this.mKeyCode;
      }
      
      public function get keyLocation() : uint
      {
         return this.mKeyLocation;
      }
      
      public function get altKey() : Boolean
      {
         return this.mAltKey;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.mCtrlKey;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.mShiftKey;
      }
   }
}
