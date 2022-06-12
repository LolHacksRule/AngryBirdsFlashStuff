package §&W§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §7L§
   {
      
      public static const §8!Z§:Boolean = true;
      
      public static const §6>§:Boolean = true;
      
      public static const §[p§:int = 0;
      
      public static const §7!$§:int = 1;
      
      public static const §&K§:int = 500;
      
      private static var §#!5§:Array = null;
      
      private static var §?!B§:Number = 0;
      
      public static var §]!;§:int = Keyboard.F1;
      
      public static var §[!R§:int = Keyboard.F3;
      
      public static var §%%§:int = Keyboard.F2;
      
      public static var §3F§:int = Keyboard.F4;
      
      public static var §]C§:Boolean = false;
      
      public static var §-H§:Sprite = null;
      
      private static var §4!7§:TextField = null;
      
      private static var §[!7§:TextField = null;
      
      private static var §8!S§:TextField = null;
      
      private static var §'!7§:TextField = null;
      
      public static var §;"7§:int = -1;
      
      public static var §`!W§:String = "version: Unknown";
      
      public static var §38§:String = "";
      
      {
         init();
      }
      
      public function §7L§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§8!Z§)
         {
            return;
         }
         §#!5§ = new Array(§&K§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§8!Z§)
         {
            _loc3_ = §?!B§++ % §&K§;
            §#!5§[_loc3_] = [param1,param2];
            if(param2 == §;"7§ || §;"7§ < 0)
            {
               §[!L§();
            }
         }
         if(§6>§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §>!X§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §[!L§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§8!Z§)
         {
            return;
         }
         if(§-H§ && §-H§.visible)
         {
            if(§;"7§ < 0)
            {
               §8!S§.text = "Current channel: ALL";
            }
            else
            {
               §8!S§.text = "Current channel: " + §;"7§;
            }
            if(§`!W§ != null)
            {
               §'!7§.text = §`!W§;
            }
            _loc1_ = true;
            if(§4!7§.scrollV != §4!7§.numLines - int(§4!7§.height / (§4!7§.textHeight / §4!7§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §&K§)
            {
               _loc4_ = (§?!B§ + _loc3_ + 1) % 500;
               if(§#!5§[_loc4_] != null)
               {
                  if(§;"7§ < 0 || §#!5§[_loc4_][1] == §;"7§)
                  {
                     _loc2_ += §#!5§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §4!7§.text = _loc2_;
            if(_loc1_)
            {
               §4!7§.scrollV = §4!7§.numLines;
            }
         }
      }
      
      public static function §4!W§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§8!Z§)
         {
            return;
         }
         §-H§ = new Sprite();
         §-H§.visible = false;
         param1.addChild(§-H§);
         var _loc7_:Graphics;
         (_loc7_ = §-H§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §4!7§ = new TextField();
         §4!7§.width = param4;
         §4!7§.height = param5 - 40;
         §4!7§.x = param2;
         §4!7§.y = param3 + 40;
         §4!7§.wordWrap = true;
         §-H§.addChild(§4!7§);
         §[!7§ = new TextField();
         §[!7§.x = param2 + param4 / 2;
         §[!7§.y = param3;
         §[!7§.width = param4 / 2;
         §[!7§.height = 20;
         §[!7§.text = "LOGGER CAPTURING INPUT, F4";
         §[!7§.border = true;
         §[!7§.borderColor = 16711680;
         §-H§.addChild(§[!7§);
         §8!S§ = new TextField();
         §8!S§.width = param4;
         §8!S§.height = 20;
         §8!S§.x = param2;
         §8!S§.y = param3;
         §-H§.addChild(§8!S§);
         §'!7§ = new TextField();
         §'!7§.width = param4;
         §'!7§.height = 20;
         §'!7§.x = param2;
         §'!7§.y = param3 + 20;
         §-H§.addChild(§'!7§);
         §=o§(§]C§);
         if(param6 >= 0)
         {
            param1.addChildAt(§-H§,param6);
         }
         else
         {
            param1.addChild(§-H§);
         }
      }
      
      public static function §=o§(param1:Boolean) : void
      {
         if(!§8!Z§)
         {
            return;
         }
         §]C§ = param1;
         §-H§.mouseChildren = §]C§;
         §-H§.mouseEnabled = §]C§;
         §8!S§.mouseEnabled = §]C§;
         §'!7§.mouseEnabled = §]C§;
         §4!7§.mouseEnabled = §]C§;
         §[!7§.visible = §]C§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§8!Z§)
         {
            return;
         }
      }
      
      public static function §!" §(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §]!;§ = param1;
         §%%§ = param2;
         §[!R§ = param3;
      }
      
      public static function §<"'§(param1:String) : void
      {
         §`!W§ = param1;
      }
   }
}
