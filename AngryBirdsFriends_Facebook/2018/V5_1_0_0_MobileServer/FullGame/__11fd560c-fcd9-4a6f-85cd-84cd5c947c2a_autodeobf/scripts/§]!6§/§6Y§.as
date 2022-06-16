package §]!6§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §6Y§
   {
      
      public static const §&D§:Boolean = true;
      
      public static const §;"s§:Boolean = true;
      
      public static const §0!3§:int = 0;
      
      public static const § !f§:int = 1;
      
      public static const §>u§:int = 500;
      
      private static var §#$?§:Array = null;
      
      private static var §1!R§:Number = 0;
      
      public static var §;"1§:int = Keyboard.F1;
      
      public static var §9P§:int = Keyboard.F3;
      
      public static var §,"4§:int = Keyboard.F2;
      
      public static var §&"<§:int = Keyboard.F4;
      
      public static var §;#m§:Boolean = false;
      
      public static var §!"Y§:Sprite = null;
      
      private static var §'#m§:TextField = null;
      
      private static var §2$&§:TextField = null;
      
      private static var §&"y§:TextField = null;
      
      private static var §##"§:TextField = null;
      
      public static var §8_§:int = -1;
      
      public static var §2!§:String = "version: Unknown";
      
      public static var §8"u§:String = "";
      
      {
         init();
      }
      
      public function §6Y§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§&D§)
         {
            return;
         }
         §#$?§ = new Array(§>u§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§&D§)
         {
            _loc3_ = §1!R§++ % §>u§;
            §#$?§[_loc3_] = [param1,param2];
            if(param2 == §8_§ || §8_§ < 0)
            {
               §6#x§();
            }
         }
         if(§;"s§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §]!m§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §6#x§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§&D§)
         {
            return;
         }
         if(§!"Y§ && §!"Y§.visible)
         {
            if(§8_§ < 0)
            {
               §&"y§.text = "Current channel: ALL";
            }
            else
            {
               §&"y§.text = "Current channel: " + §8_§;
            }
            if(§2!§ != null)
            {
               §##"§.text = §2!§;
            }
            _loc1_ = true;
            if(§'#m§.scrollV != §'#m§.numLines - int(§'#m§.height / (§'#m§.textHeight / §'#m§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §>u§)
            {
               _loc4_ = (§1!R§ + _loc3_ + 1) % 500;
               if(§#$?§[_loc4_] != null)
               {
                  if(§8_§ < 0 || §#$?§[_loc4_][1] == §8_§)
                  {
                     _loc2_ += §#$?§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §'#m§.text = _loc2_;
            if(_loc1_)
            {
               §'#m§.scrollV = §'#m§.numLines;
            }
         }
      }
      
      public static function §8!7§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§&D§)
         {
            return;
         }
         §!"Y§ = new Sprite();
         §!"Y§.visible = false;
         param1.addChild(§!"Y§);
         var _loc7_:Graphics;
         (_loc7_ = §!"Y§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §'#m§ = new TextField();
         §'#m§.width = param4;
         §'#m§.height = param5 - 40;
         §'#m§.x = param2;
         §'#m§.y = param3 + 40;
         §'#m§.wordWrap = true;
         §!"Y§.addChild(§'#m§);
         §2$&§ = new TextField();
         §2$&§.x = param2 + param4 / 2;
         §2$&§.y = param3;
         §2$&§.width = param4 / 2;
         §2$&§.height = 20;
         §2$&§.text = "LOGGER CAPTURING INPUT, F4";
         §2$&§.border = true;
         §2$&§.borderColor = 16711680;
         §!"Y§.addChild(§2$&§);
         §&"y§ = new TextField();
         §&"y§.width = param4;
         §&"y§.height = 20;
         §&"y§.x = param2;
         §&"y§.y = param3;
         §!"Y§.addChild(§&"y§);
         §##"§ = new TextField();
         §##"§.width = param4;
         §##"§.height = 20;
         §##"§.x = param2;
         §##"§.y = param3 + 20;
         §!"Y§.addChild(§##"§);
         §6%§(§;#m§);
         if(param6 >= 0)
         {
            param1.addChildAt(§!"Y§,param6);
         }
         else
         {
            param1.addChild(§!"Y§);
         }
      }
      
      public static function §6%§(param1:Boolean) : void
      {
         if(!§&D§)
         {
            return;
         }
         §;#m§ = param1;
         §!"Y§.mouseChildren = §;#m§;
         §!"Y§.mouseEnabled = §;#m§;
         §&"y§.mouseEnabled = §;#m§;
         §##"§.mouseEnabled = §;#m§;
         §'#m§.mouseEnabled = §;#m§;
         §2$&§.visible = §;#m§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§&D§)
         {
            return;
         }
      }
      
      public static function §&!4§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §;"1§ = param1;
         §,"4§ = param2;
         §9P§ = param3;
      }
      
      public static function §"5§(param1:String) : void
      {
         §2!§ = param1;
      }
   }
}
