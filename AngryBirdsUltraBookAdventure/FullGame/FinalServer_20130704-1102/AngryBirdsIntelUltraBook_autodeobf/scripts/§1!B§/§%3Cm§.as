package §1!B§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §<m§
   {
      
      public static const §^+§:Boolean = true;
      
      public static const §]!"§:Boolean = true;
      
      public static const §>`§:int = 0;
      
      public static const §<y§:int = 1;
      
      public static const § u§:int = 500;
      
      private static var §#!S§:Array = null;
      
      private static var §9l§:Number = 0;
      
      public static var §>""§:int = Keyboard.F1;
      
      public static var §^!B§:int = Keyboard.F3;
      
      public static var set:int = Keyboard.F2;
      
      public static var §-d§:int = Keyboard.F4;
      
      public static var §`'§:Boolean = false;
      
      public static var §8v§:Sprite = null;
      
      private static var §3!o§:TextField = null;
      
      private static var §^Q§:TextField = null;
      
      private static var §;s§:TextField = null;
      
      private static var §,"!§:TextField = null;
      
      public static var §^o§:int = -1;
      
      public static var §[![§:String = "version: Unknown";
      
      public static var §>! §:String = "";
      
      {
         init();
      }
      
      public function §<m§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§^+§)
         {
            return;
         }
         §#!S§ = new Array(§ u§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§^+§)
         {
            _loc3_ = §9l§++ % § u§;
            §#!S§[_loc3_] = [param1,param2];
            if(param2 == §^o§ || §^o§ < 0)
            {
               §[0§();
            }
         }
         if(§]!"§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §#F§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §[0§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§^+§)
         {
            return;
         }
         if(§8v§ && §8v§.visible)
         {
            if(§^o§ < 0)
            {
               §;s§.text = "Current channel: ALL";
            }
            else
            {
               §;s§.text = "Current channel: " + §^o§;
            }
            if(§[![§ != null)
            {
               §,"!§.text = §[![§;
            }
            _loc1_ = true;
            if(§3!o§.scrollV != §3!o§.numLines - int(§3!o§.height / (§3!o§.textHeight / §3!o§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < § u§)
            {
               _loc4_ = (§9l§ + _loc3_ + 1) % 500;
               if(§#!S§[_loc4_] != null)
               {
                  if(§^o§ < 0 || §#!S§[_loc4_][1] == §^o§)
                  {
                     _loc2_ += §#!S§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §3!o§.text = _loc2_;
            if(_loc1_)
            {
               §3!o§.scrollV = §3!o§.numLines;
            }
         }
      }
      
      public static function §3! §(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§^+§)
         {
            return;
         }
         §8v§ = new Sprite();
         §8v§.visible = false;
         param1.addChild(§8v§);
         var _loc7_:Graphics;
         (_loc7_ = §8v§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §3!o§ = new TextField();
         §3!o§.width = param4;
         §3!o§.height = param5 - 40;
         §3!o§.x = param2;
         §3!o§.y = param3 + 40;
         §3!o§.wordWrap = true;
         §8v§.addChild(§3!o§);
         §^Q§ = new TextField();
         §^Q§.x = param2 + param4 / 2;
         §^Q§.y = param3;
         §^Q§.width = param4 / 2;
         §^Q§.height = 20;
         §^Q§.text = "LOGGER CAPTURING INPUT, F4";
         §^Q§.border = true;
         §^Q§.borderColor = 16711680;
         §8v§.addChild(§^Q§);
         §;s§ = new TextField();
         §;s§.width = param4;
         §;s§.height = 20;
         §;s§.x = param2;
         §;s§.y = param3;
         §8v§.addChild(§;s§);
         §,"!§ = new TextField();
         §,"!§.width = param4;
         §,"!§.height = 20;
         §,"!§.x = param2;
         §,"!§.y = param3 + 20;
         §8v§.addChild(§,"!§);
         § !J§(§`'§);
         if(param6 >= 0)
         {
            param1.addChildAt(§8v§,param6);
         }
         else
         {
            param1.addChild(§8v§);
         }
      }
      
      public static function § !J§(param1:Boolean) : void
      {
         if(!§^+§)
         {
            return;
         }
         §`'§ = param1;
         §8v§.mouseChildren = §`'§;
         §8v§.mouseEnabled = §`'§;
         §;s§.mouseEnabled = §`'§;
         §,"!§.mouseEnabled = §`'§;
         §3!o§.mouseEnabled = §`'§;
         §^Q§.visible = §`'§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§^+§)
         {
            return;
         }
      }
      
      public static function §#k§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §>""§ = param1;
         set = param2;
         §^!B§ = param3;
      }
      
      public static function §^2§(param1:String) : void
      {
         §[![§ = param1;
      }
   }
}
