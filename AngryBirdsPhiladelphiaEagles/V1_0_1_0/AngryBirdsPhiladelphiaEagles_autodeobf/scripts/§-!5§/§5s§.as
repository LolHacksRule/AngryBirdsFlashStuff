package §-!5§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §5s§
   {
      
      public static const §"J§:Boolean = true;
      
      public static const §`P§:Boolean = true;
      
      public static const §^S§:int = 0;
      
      public static const §%T§:int = 1;
      
      public static const §07§:int = 500;
      
      private static var §#T§:Array = null;
      
      private static var §8!0§:Number = 0;
      
      public static var §7!"§:int = Keyboard.F1;
      
      public static var §&<§:int = Keyboard.F3;
      
      public static var §7!L§:int = Keyboard.F2;
      
      public static var §`c§:int = Keyboard.F4;
      
      public static var §+Z§:Boolean = false;
      
      public static var §^L§:Sprite = null;
      
      private static var §;8§:TextField = null;
      
      private static var §5W§:TextField = null;
      
      private static var §6!9§:TextField = null;
      
      private static var §<@§:TextField = null;
      
      public static var §`J§:int = -1;
      
      public static var §8W§:String = "version: Unknown";
      
      public static var §7Y§:String = "";
      
      {
         init();
      }
      
      public function §5s§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§"J§)
         {
            return;
         }
         §#T§ = new Array(§07§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§"J§)
         {
            _loc3_ = §8!0§++ % §07§;
            §#T§[_loc3_] = [param1,param2];
            if(param2 == §`J§ || §`J§ < 0)
            {
               §,u§();
            }
         }
         if(§`P§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §9r§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §,u§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§"J§)
         {
            return;
         }
         if(§^L§ && §^L§.visible)
         {
            if(§`J§ < 0)
            {
               §6!9§.text = "Current channel: ALL";
            }
            else
            {
               §6!9§.text = "Current channel: " + §`J§;
            }
            if(§8W§ != null)
            {
               §<@§.text = §8W§;
            }
            _loc1_ = true;
            if(§;8§.scrollV != §;8§.numLines - int(§;8§.height / (§;8§.textHeight / §;8§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §07§)
            {
               _loc4_ = (§8!0§ + _loc3_ + 1) % 500;
               if(§#T§[_loc4_] != null)
               {
                  if(§`J§ < 0 || §#T§[_loc4_][1] == §`J§)
                  {
                     _loc2_ += §#T§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §;8§.text = _loc2_;
            if(_loc1_)
            {
               §;8§.scrollV = §;8§.numLines;
            }
         }
      }
      
      public static function § use§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§"J§)
         {
            return;
         }
         §^L§ = new Sprite();
         §^L§.visible = false;
         param1.addChild(§^L§);
         var _loc7_:Graphics;
         (_loc7_ = §^L§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §;8§ = new TextField();
         §;8§.width = param4;
         §;8§.height = param5 - 40;
         §;8§.x = param2;
         §;8§.y = param3 + 40;
         §;8§.wordWrap = true;
         §^L§.addChild(§;8§);
         §5W§ = new TextField();
         §5W§.x = param2 + param4 / 2;
         §5W§.y = param3;
         §5W§.width = param4 / 2;
         §5W§.height = 20;
         §5W§.text = "LOGGER CAPTURING INPUT, F4";
         §5W§.border = true;
         §5W§.borderColor = 16711680;
         §^L§.addChild(§5W§);
         §6!9§ = new TextField();
         §6!9§.width = param4;
         §6!9§.height = 20;
         §6!9§.x = param2;
         §6!9§.y = param3;
         §^L§.addChild(§6!9§);
         §<@§ = new TextField();
         §<@§.width = param4;
         §<@§.height = 20;
         §<@§.x = param2;
         §<@§.y = param3 + 20;
         §^L§.addChild(§<@§);
         §+a§(§+Z§);
         if(param6 >= 0)
         {
            param1.addChildAt(§^L§,param6);
         }
         else
         {
            param1.addChild(§^L§);
         }
      }
      
      public static function §+a§(param1:Boolean) : void
      {
         if(!§"J§)
         {
            return;
         }
         §+Z§ = param1;
         §^L§.mouseChildren = §+Z§;
         §^L§.mouseEnabled = §+Z§;
         §6!9§.mouseEnabled = §+Z§;
         §<@§.mouseEnabled = §+Z§;
         §;8§.mouseEnabled = §+Z§;
         §5W§.visible = §+Z§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§"J§)
         {
            return;
         }
      }
      
      public static function §3R§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §7!"§ = param1;
         §7!L§ = param2;
         §&<§ = param3;
      }
      
      public static function §6Y§(param1:String) : void
      {
         §8W§ = param1;
      }
   }
}
