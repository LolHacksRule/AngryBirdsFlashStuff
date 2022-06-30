package §&!b§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class § c§
   {
      
      public static const §3!Z§:Boolean = true;
      
      public static const §"!_§:Boolean = true;
      
      public static const §]!X§:int = 0;
      
      public static const §!<§:int = 1;
      
      public static const §`!8§:int = 500;
      
      private static var §[!R§:Array = null;
      
      private static var §2!$§:Number = 0;
      
      public static var §+e§:int = Keyboard.F1;
      
      public static var §,&§:int = Keyboard.F3;
      
      public static var §;#§:int = Keyboard.F2;
      
      public static var §<P§:int = Keyboard.F4;
      
      public static var §%!7§:Boolean = false;
      
      public static var §!j§:Sprite = null;
      
      private static var §%!"§:TextField = null;
      
      private static var §[T§:TextField = null;
      
      private static var §`!>§:TextField = null;
      
      private static var §;§:TextField = null;
      
      public static var §!D§:int = -1;
      
      public static var §-!h§:String = "version: Unknown";
      
      public static var §]E§:String = "";
      
      {
         init();
      }
      
      public function § c§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§3!Z§)
         {
            return;
         }
         §[!R§ = new Array(§`!8§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§3!Z§)
         {
            _loc3_ = §2!$§++ % §`!8§;
            §[!R§[_loc3_] = [param1,param2];
            if(param2 == §!D§ || §!D§ < 0)
            {
               §`"§();
            }
         }
         if(§"!_§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §%Q§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §`"§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§3!Z§)
         {
            return;
         }
         if(§!j§ && §!j§.visible)
         {
            if(§!D§ < 0)
            {
               §`!>§.text = "Current channel: ALL";
            }
            else
            {
               §`!>§.text = "Current channel: " + §!D§;
            }
            if(§-!h§ != null)
            {
               §;§.text = §-!h§;
            }
            _loc1_ = true;
            if(§%!"§.scrollV != §%!"§.numLines - int(§%!"§.height / (§%!"§.textHeight / §%!"§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §`!8§)
            {
               _loc4_ = (§2!$§ + _loc3_ + 1) % 500;
               if(§[!R§[_loc4_] != null)
               {
                  if(§!D§ < 0 || §[!R§[_loc4_][1] == §!D§)
                  {
                     _loc2_ += §[!R§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §%!"§.text = _loc2_;
            if(_loc1_)
            {
               §%!"§.scrollV = §%!"§.numLines;
            }
         }
      }
      
      public static function §6!W§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§3!Z§)
         {
            return;
         }
         §!j§ = new Sprite();
         §!j§.visible = false;
         param1.addChild(§!j§);
         var _loc7_:Graphics;
         (_loc7_ = §!j§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §%!"§ = new TextField();
         §%!"§.width = param4;
         §%!"§.height = param5 - 40;
         §%!"§.x = param2;
         §%!"§.y = param3 + 40;
         §%!"§.wordWrap = true;
         §!j§.addChild(§%!"§);
         §[T§ = new TextField();
         §[T§.x = param2 + param4 / 2;
         §[T§.y = param3;
         §[T§.width = param4 / 2;
         §[T§.height = 20;
         §[T§.text = "LOGGER CAPTURING INPUT, F4";
         §[T§.border = true;
         §[T§.borderColor = 16711680;
         §!j§.addChild(§[T§);
         §`!>§ = new TextField();
         §`!>§.width = param4;
         §`!>§.height = 20;
         §`!>§.x = param2;
         §`!>§.y = param3;
         §!j§.addChild(§`!>§);
         §;§ = new TextField();
         §;§.width = param4;
         §;§.height = 20;
         §;§.x = param2;
         §;§.y = param3 + 20;
         §!j§.addChild(§;§);
         §3"§(§%!7§);
         if(param6 >= 0)
         {
            param1.addChildAt(§!j§,param6);
         }
         else
         {
            param1.addChild(§!j§);
         }
      }
      
      public static function §3"§(param1:Boolean) : void
      {
         if(!§3!Z§)
         {
            return;
         }
         §%!7§ = param1;
         §!j§.mouseChildren = §%!7§;
         §!j§.mouseEnabled = §%!7§;
         §`!>§.mouseEnabled = §%!7§;
         §;§.mouseEnabled = §%!7§;
         §%!"§.mouseEnabled = §%!7§;
         §[T§.visible = §%!7§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§3!Z§)
         {
            return;
         }
      }
      
      public static function §%!-§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §+e§ = param1;
         §;#§ = param2;
         §,&§ = param3;
      }
      
      public static function §7K§(param1:String) : void
      {
         §-!h§ = param1;
      }
   }
}
