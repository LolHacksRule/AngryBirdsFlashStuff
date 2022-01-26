package §_-ot§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §_-o6§
   {
      
      public static const §_-4c§:Boolean = true;
      
      public static const §_-Sd§:Boolean = true;
      
      public static const §_-6c§:int = 0;
      
      public static const §_-7O§:int = 1;
      
      public static const §_-UL§:int = 500;
      
      private static var §_-fY§:Array = null;
      
      private static var §_-J3§:Number = 0;
      
      public static var §_-W5§:int = Keyboard.F1;
      
      public static var §_-K3§:int = Keyboard.F3;
      
      public static var §_-CL§:int = Keyboard.F2;
      
      public static var §_-6p§:int = Keyboard.F4;
      
      public static var §_-Rh§:Boolean = false;
      
      public static var §_-db§:Sprite = null;
      
      private static var §_-VB§:TextField = null;
      
      private static var §_-Si§:TextField = null;
      
      private static var §_-0B§:TextField = null;
      
      private static var §_-wj§:TextField = null;
      
      public static var §_-KA§:int = -1;
      
      public static var §_-J§:String = "version: Unknown";
      
      {
         init();
      }
      
      public function §_-o6§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§_-4c§)
         {
            return;
         }
         §_-fY§ = new Array(§_-UL§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§_-4c§)
         {
            _loc3_ = §_-J3§++ % §_-UL§;
            §_-fY§[_loc3_] = [param1,param2];
            if(param2 == §_-KA§ || §_-KA§ < 0)
            {
               §_-sM§();
            }
         }
         if(§_-Sd§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §_-W7§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §_-sM§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§_-4c§)
         {
            return;
         }
         if(§_-db§ && §_-db§.visible)
         {
            if(§_-KA§ < 0)
            {
               §_-0B§.text = "Current channel: ALL";
            }
            else
            {
               §_-0B§.text = "Current channel: " + §_-KA§;
            }
            if(§_-J§ != null)
            {
               §_-wj§.text = §_-J§;
            }
            _loc1_ = true;
            if(§_-VB§.scrollV != §_-VB§.numLines - int(§_-VB§.height / (§_-VB§.textHeight / §_-VB§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §_-UL§)
            {
               _loc4_ = (§_-J3§ + _loc3_ + 1) % 500;
               if(§_-fY§[_loc4_] != null)
               {
                  if(§_-KA§ < 0 || §_-fY§[_loc4_][1] == §_-KA§)
                  {
                     _loc2_ += §_-fY§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §_-VB§.text = _loc2_;
            if(_loc1_)
            {
               §_-VB§.scrollV = §_-VB§.numLines;
            }
         }
      }
      
      public static function §_-gQ§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§_-4c§)
         {
            return;
         }
         §_-db§ = new Sprite();
         §_-db§.visible = false;
         param1.addChild(§_-db§);
         var _loc7_:Graphics;
         (_loc7_ = §_-db§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §_-VB§ = new TextField();
         §_-VB§.width = param4;
         §_-VB§.height = param5 - 40;
         §_-VB§.x = param2;
         §_-VB§.y = param3 + 40;
         §_-VB§.wordWrap = true;
         §_-db§.addChild(§_-VB§);
         §_-Si§ = new TextField();
         §_-Si§.x = param2 + param4 / 2;
         §_-Si§.y = param3;
         §_-Si§.width = param4 / 2;
         §_-Si§.height = 20;
         §_-Si§.text = "LOGGER CAPTURING INPUT, F4";
         §_-Si§.border = true;
         §_-Si§.borderColor = 16711680;
         §_-db§.addChild(§_-Si§);
         §_-0B§ = new TextField();
         §_-0B§.width = param4;
         §_-0B§.height = 20;
         §_-0B§.x = param2;
         §_-0B§.y = param3;
         §_-db§.addChild(§_-0B§);
         §_-wj§ = new TextField();
         §_-wj§.width = param4;
         §_-wj§.height = 20;
         §_-wj§.x = param2;
         §_-wj§.y = param3 + 20;
         §_-db§.addChild(§_-wj§);
         §_-91§(§_-Rh§);
         if(param6 >= 0)
         {
            param1.addChildAt(§_-db§,param6);
         }
         else
         {
            param1.addChild(§_-db§);
         }
      }
      
      public static function §_-91§(param1:Boolean) : void
      {
         if(!§_-4c§)
         {
            return;
         }
         §_-Rh§ = param1;
         §_-db§.mouseChildren = §_-Rh§;
         §_-db§.mouseEnabled = §_-Rh§;
         §_-0B§.mouseEnabled = §_-Rh§;
         §_-wj§.mouseEnabled = §_-Rh§;
         §_-VB§.mouseEnabled = §_-Rh§;
         §_-Si§.visible = §_-Rh§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§_-4c§)
         {
            return;
         }
      }
      
      public static function §_-kM§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §_-W5§ = param1;
         §_-CL§ = param2;
         §_-K3§ = param3;
      }
      
      public static function § each§(param1:String) : void
      {
         §_-J§ = "version:" + param1;
      }
   }
}
