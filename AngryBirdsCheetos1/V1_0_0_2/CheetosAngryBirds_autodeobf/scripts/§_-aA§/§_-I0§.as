package §_-aA§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §_-I0§
   {
      
      public static const §_-PN§:Boolean = true;
      
      public static const §_-pM§:Boolean = true;
      
      public static const §_-n-§:int = 0;
      
      public static const §_-at§:int = 1;
      
      public static const §_-8L§:int = 500;
      
      private static var §_-7Z§:Array = null;
      
      private static var §_-uE§:Number = 0;
      
      public static var §_-1V§:int = Keyboard.F1;
      
      public static var §_-L8§:int = Keyboard.F3;
      
      public static var §_-CP§:int = Keyboard.F2;
      
      public static var §_-QQ§:int = Keyboard.F4;
      
      public static var §_-1H§:Boolean = false;
      
      public static var §_-MO§:Sprite = null;
      
      private static var §_-Pv§:TextField = null;
      
      private static var §_-ds§:TextField = null;
      
      private static var §_-Qk§:TextField = null;
      
      private static var §_-l§:TextField = null;
      
      public static var §_-kY§:int = -1;
      
      public static var §_-kF§:String = "version: Unknown";
      
      public static var §_-000§:String = "";
      
      {
         init();
      }
      
      public function §_-I0§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§_-PN§)
         {
            return;
         }
         §_-7Z§ = new Array(§_-8L§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§_-PN§)
         {
            _loc3_ = §_-uE§++ % §_-8L§;
            §_-7Z§[_loc3_] = [param1,param2];
            if(param2 == §_-kY§ || §_-kY§ < 0)
            {
               §_-s8§();
            }
         }
         if(§_-pM§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §_-qf§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §_-s8§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§_-PN§)
         {
            return;
         }
         if(§_-MO§ && §_-MO§.visible)
         {
            if(§_-kY§ < 0)
            {
               §_-Qk§.text = "Current channel: ALL";
            }
            else
            {
               §_-Qk§.text = "Current channel: " + §_-kY§;
            }
            if(§_-kF§ != null)
            {
               §_-l§.text = §_-kF§;
            }
            _loc1_ = true;
            if(§_-Pv§.scrollV != §_-Pv§.numLines - int(§_-Pv§.height / (§_-Pv§.textHeight / §_-Pv§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §_-8L§)
            {
               _loc4_ = (§_-uE§ + _loc3_ + 1) % 500;
               if(§_-7Z§[_loc4_] != null)
               {
                  if(§_-kY§ < 0 || §_-7Z§[_loc4_][1] == §_-kY§)
                  {
                     _loc2_ += §_-7Z§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §_-Pv§.text = _loc2_;
            if(_loc1_)
            {
               §_-Pv§.scrollV = §_-Pv§.numLines;
            }
         }
      }
      
      public static function §_-Ru§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§_-PN§)
         {
            return;
         }
         §_-MO§ = new Sprite();
         §_-MO§.visible = false;
         param1.addChild(§_-MO§);
         var _loc7_:Graphics;
         (_loc7_ = §_-MO§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §_-Pv§ = new TextField();
         §_-Pv§.width = param4;
         §_-Pv§.height = param5 - 40;
         §_-Pv§.x = param2;
         §_-Pv§.y = param3 + 40;
         §_-Pv§.wordWrap = true;
         §_-MO§.addChild(§_-Pv§);
         §_-ds§ = new TextField();
         §_-ds§.x = param2 + param4 / 2;
         §_-ds§.y = param3;
         §_-ds§.width = param4 / 2;
         §_-ds§.height = 20;
         §_-ds§.text = "LOGGER CAPTURING INPUT, F4";
         §_-ds§.border = true;
         §_-ds§.borderColor = 16711680;
         §_-MO§.addChild(§_-ds§);
         §_-Qk§ = new TextField();
         §_-Qk§.width = param4;
         §_-Qk§.height = 20;
         §_-Qk§.x = param2;
         §_-Qk§.y = param3;
         §_-MO§.addChild(§_-Qk§);
         §_-l§ = new TextField();
         §_-l§.width = param4;
         §_-l§.height = 20;
         §_-l§.x = param2;
         §_-l§.y = param3 + 20;
         §_-MO§.addChild(§_-l§);
         §_-gr§(§_-1H§);
         if(param6 >= 0)
         {
            param1.addChildAt(§_-MO§,param6);
         }
         else
         {
            param1.addChild(§_-MO§);
         }
      }
      
      public static function §_-gr§(param1:Boolean) : void
      {
         if(!§_-PN§)
         {
            return;
         }
         §_-1H§ = param1;
         §_-MO§.mouseChildren = §_-1H§;
         §_-MO§.mouseEnabled = §_-1H§;
         §_-Qk§.mouseEnabled = §_-1H§;
         §_-l§.mouseEnabled = §_-1H§;
         §_-Pv§.mouseEnabled = §_-1H§;
         §_-ds§.visible = §_-1H§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§_-PN§)
         {
            return;
         }
      }
      
      public static function §_-X0§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §_-1V§ = param1;
         §_-CP§ = param2;
         §_-L8§ = param3;
      }
      
      public static function §_-Uv§(param1:String) : void
      {
         §_-kF§ = param1;
      }
   }
}
