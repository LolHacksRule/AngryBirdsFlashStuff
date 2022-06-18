package §2x§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §'!@§
   {
      
      public static const §;J§:Boolean = true;
      
      public static const §-V§:Boolean = true;
      
      public static const §^%§:int = 0;
      
      public static const §^$§:int = 1;
      
      public static const §%h§:int = 500;
      
      private static var §8!7§:Array = null;
      
      private static var §7!G§:Number = 0;
      
      public static var §^G§:int = Keyboard.F1;
      
      public static var §#8§:int = Keyboard.F3;
      
      public static var §5?§:int = Keyboard.F2;
      
      public static var §6>§:int = Keyboard.F4;
      
      public static var §#Z§:Boolean = false;
      
      public static var §8C§:Sprite = null;
      
      private static var §52§:TextField = null;
      
      private static var §?!A§:TextField = null;
      
      private static var § §:TextField = null;
      
      private static var §"0§:TextField = null;
      
      public static var §4]§:int = -1;
      
      public static var §switch§:String = "version: Unknown";
      
      public static var §#,§:String = "";
      
      {
         init();
      }
      
      public function §'!@§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§;J§)
         {
            return;
         }
         §8!7§ = new Array(§%h§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§;J§)
         {
            _loc3_ = §7!G§++ % §%h§;
            §8!7§[_loc3_] = [param1,param2];
            if(param2 == §4]§ || §4]§ < 0)
            {
               §,s§();
            }
         }
         if(§-V§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §`I§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §,s§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§;J§)
         {
            return;
         }
         if(§8C§ && §8C§.visible)
         {
            if(§4]§ < 0)
            {
               § §.text = "Current channel: ALL";
            }
            else
            {
               § §.text = "Current channel: " + §4]§;
            }
            if(§switch§ != null)
            {
               §"0§.text = §switch§;
            }
            _loc1_ = true;
            if(§52§.scrollV != §52§.numLines - int(§52§.height / (§52§.textHeight / §52§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §%h§)
            {
               _loc4_ = (§7!G§ + _loc3_ + 1) % 500;
               if(§8!7§[_loc4_] != null)
               {
                  if(§4]§ < 0 || §8!7§[_loc4_][1] == §4]§)
                  {
                     _loc2_ += §8!7§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §52§.text = _loc2_;
            if(_loc1_)
            {
               §52§.scrollV = §52§.numLines;
            }
         }
      }
      
      public static function §68§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§;J§)
         {
            return;
         }
         §8C§ = new Sprite();
         §8C§.visible = false;
         param1.addChild(§8C§);
         var _loc7_:Graphics;
         (_loc7_ = §8C§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §52§ = new TextField();
         §52§.width = param4;
         §52§.height = param5 - 40;
         §52§.x = param2;
         §52§.y = param3 + 40;
         §52§.wordWrap = true;
         §8C§.addChild(§52§);
         §?!A§ = new TextField();
         §?!A§.x = param2 + param4 / 2;
         §?!A§.y = param3;
         §?!A§.width = param4 / 2;
         §?!A§.height = 20;
         §?!A§.text = "LOGGER CAPTURING INPUT, F4";
         §?!A§.border = true;
         §?!A§.borderColor = 16711680;
         §8C§.addChild(§?!A§);
         § § = new TextField();
         § §.width = param4;
         § §.height = 20;
         § §.x = param2;
         § §.y = param3;
         §8C§.addChild(§ §);
         §"0§ = new TextField();
         §"0§.width = param4;
         §"0§.height = 20;
         §"0§.x = param2;
         §"0§.y = param3 + 20;
         §8C§.addChild(§"0§);
         §<<§(§#Z§);
         if(param6 >= 0)
         {
            param1.addChildAt(§8C§,param6);
         }
         else
         {
            param1.addChild(§8C§);
         }
      }
      
      public static function §<<§(param1:Boolean) : void
      {
         if(!§;J§)
         {
            return;
         }
         §#Z§ = param1;
         §8C§.mouseChildren = §#Z§;
         §8C§.mouseEnabled = §#Z§;
         § §.mouseEnabled = §#Z§;
         §"0§.mouseEnabled = §#Z§;
         §52§.mouseEnabled = §#Z§;
         §?!A§.visible = §#Z§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§;J§)
         {
            return;
         }
      }
      
      public static function §0#§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §^G§ = param1;
         §5?§ = param2;
         §#8§ = param3;
      }
      
      public static function §+&§(param1:String) : void
      {
         §switch§ = param1;
      }
   }
}
