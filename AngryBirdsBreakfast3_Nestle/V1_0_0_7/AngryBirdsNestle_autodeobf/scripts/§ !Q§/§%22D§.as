package § !Q§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §"D§
   {
      
      public static const §6!S§:Boolean = true;
      
      public static const §2"1§:Boolean = true;
      
      public static const §2G§:int = 0;
      
      public static const §!E§:int = 1;
      
      public static const §1j§:int = 500;
      
      private static var §+!H§:Array = null;
      
      private static var §+!Z§:Number = 0;
      
      public static var §09§:int = Keyboard.F1;
      
      public static var § !^§:int = Keyboard.F3;
      
      public static var §8u§:int = Keyboard.F2;
      
      public static var §`"1§:int = Keyboard.F4;
      
      public static var §8!7§:Boolean = false;
      
      public static var §6=§:Sprite = null;
      
      private static var §3"5§:TextField = null;
      
      private static var § null§:TextField = null;
      
      private static var §1!D§:TextField = null;
      
      private static var §[!$§:TextField = null;
      
      public static var §5!9§:int = -1;
      
      public static var §]R§:String = "version: Unknown";
      
      public static var §,L§:String = "";
      
      {
         init();
      }
      
      public function §"D§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§6!S§)
         {
            return;
         }
         §+!H§ = new Array(§1j§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§6!S§)
         {
            _loc3_ = §+!Z§++ % §1j§;
            §+!H§[_loc3_] = [param1,param2];
            if(param2 == §5!9§ || §5!9§ < 0)
            {
               §throw§();
            }
         }
         if(§2"1§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function § _§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §throw§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§6!S§)
         {
            return;
         }
         if(§6=§ && §6=§.visible)
         {
            if(§5!9§ < 0)
            {
               §1!D§.text = "Current channel: ALL";
            }
            else
            {
               §1!D§.text = "Current channel: " + §5!9§;
            }
            if(§]R§ != null)
            {
               §[!$§.text = §]R§;
            }
            _loc1_ = true;
            if(§3"5§.scrollV != §3"5§.numLines - int(§3"5§.height / (§3"5§.textHeight / §3"5§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §1j§)
            {
               _loc4_ = (§+!Z§ + _loc3_ + 1) % 500;
               if(§+!H§[_loc4_] != null)
               {
                  if(§5!9§ < 0 || §+!H§[_loc4_][1] == §5!9§)
                  {
                     _loc2_ += §+!H§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §3"5§.text = _loc2_;
            if(_loc1_)
            {
               §3"5§.scrollV = §3"5§.numLines;
            }
         }
      }
      
      public static function §8$§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§6!S§)
         {
            return;
         }
         §6=§ = new Sprite();
         §6=§.visible = false;
         param1.addChild(§6=§);
         var _loc7_:Graphics;
         (_loc7_ = §6=§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §3"5§ = new TextField();
         §3"5§.width = param4;
         §3"5§.height = param5 - 40;
         §3"5§.x = param2;
         §3"5§.y = param3 + 40;
         §3"5§.wordWrap = true;
         §6=§.addChild(§3"5§);
         § null§ = new TextField();
         § null§.x = param2 + param4 / 2;
         § null§.y = param3;
         § null§.width = param4 / 2;
         § null§.height = 20;
         § null§.text = "LOGGER CAPTURING INPUT, F4";
         § null§.border = true;
         § null§.borderColor = 16711680;
         §6=§.addChild(§ null§);
         §1!D§ = new TextField();
         §1!D§.width = param4;
         §1!D§.height = 20;
         §1!D§.x = param2;
         §1!D§.y = param3;
         §6=§.addChild(§1!D§);
         §[!$§ = new TextField();
         §[!$§.width = param4;
         §[!$§.height = 20;
         §[!$§.x = param2;
         §[!$§.y = param3 + 20;
         §6=§.addChild(§[!$§);
         §,!4§(§8!7§);
         if(param6 >= 0)
         {
            param1.addChildAt(§6=§,param6);
         }
         else
         {
            param1.addChild(§6=§);
         }
      }
      
      public static function §,!4§(param1:Boolean) : void
      {
         if(!§6!S§)
         {
            return;
         }
         §8!7§ = param1;
         §6=§.mouseChildren = §8!7§;
         §6=§.mouseEnabled = §8!7§;
         §1!D§.mouseEnabled = §8!7§;
         §[!$§.mouseEnabled = §8!7§;
         §3"5§.mouseEnabled = §8!7§;
         § null§.visible = §8!7§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§6!S§)
         {
            return;
         }
      }
      
      public static function §6!`§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §09§ = param1;
         §8u§ = param2;
         § !^§ = param3;
      }
      
      public static function §3""§(param1:String) : void
      {
         §]R§ = param1;
      }
   }
}
