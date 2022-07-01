package §0!$§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §#!-§
   {
      
      public static const §>!6§:Boolean = true;
      
      public static const §6!h§:Boolean = true;
      
      public static const §,!?§:int = 0;
      
      public static const §,!I§:int = 1;
      
      public static const §7!M§:int = 500;
      
      private static var §&b§:Array = null;
      
      private static var §+!2§:Number = 0;
      
      public static var §]!_§:int = Keyboard.F1;
      
      public static var §@H§:int = Keyboard.F3;
      
      public static var §[!L§:int = Keyboard.F2;
      
      public static var §%!z§:int = Keyboard.F4;
      
      public static var §8!M§:Boolean = false;
      
      public static var §%!?§:Sprite = null;
      
      private static var §^t§:TextField = null;
      
      private static var §,!m§:TextField = null;
      
      private static var §6@§:TextField = null;
      
      private static var §>"1§:TextField = null;
      
      public static var §<!C§:int = -1;
      
      public static var §'c§:String = "version: Unknown";
      
      public static var §8!E§:String = "";
      
      {
         init();
      }
      
      public function §#!-§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§>!6§)
         {
            return;
         }
         §&b§ = new Array(§7!M§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§>!6§)
         {
            _loc3_ = §+!2§++ % §7!M§;
            §&b§[_loc3_] = [param1,param2];
            if(param2 == §<!C§ || §<!C§ < 0)
            {
               §,=§();
            }
         }
         if(§6!h§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §=!#§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §,=§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§>!6§)
         {
            return;
         }
         if(§%!?§ && §%!?§.visible)
         {
            if(§<!C§ < 0)
            {
               §6@§.text = "Current channel: ALL";
            }
            else
            {
               §6@§.text = "Current channel: " + §<!C§;
            }
            if(§'c§ != null)
            {
               §>"1§.text = §'c§;
            }
            _loc1_ = true;
            if(§^t§.scrollV != §^t§.numLines - int(§^t§.height / (§^t§.textHeight / §^t§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §7!M§)
            {
               _loc4_ = (§+!2§ + _loc3_ + 1) % 500;
               if(§&b§[_loc4_] != null)
               {
                  if(§<!C§ < 0 || §&b§[_loc4_][1] == §<!C§)
                  {
                     _loc2_ += §&b§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §^t§.text = _loc2_;
            if(_loc1_)
            {
               §^t§.scrollV = §^t§.numLines;
            }
         }
      }
      
      public static function §+X§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§>!6§)
         {
            return;
         }
         §%!?§ = new Sprite();
         §%!?§.visible = false;
         param1.addChild(§%!?§);
         var _loc7_:Graphics;
         (_loc7_ = §%!?§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §^t§ = new TextField();
         §^t§.width = param4;
         §^t§.height = param5 - 40;
         §^t§.x = param2;
         §^t§.y = param3 + 40;
         §^t§.wordWrap = true;
         §%!?§.addChild(§^t§);
         §,!m§ = new TextField();
         §,!m§.x = param2 + param4 / 2;
         §,!m§.y = param3;
         §,!m§.width = param4 / 2;
         §,!m§.height = 20;
         §,!m§.text = "LOGGER CAPTURING INPUT, F4";
         §,!m§.border = true;
         §,!m§.borderColor = 16711680;
         §%!?§.addChild(§,!m§);
         §6@§ = new TextField();
         §6@§.width = param4;
         §6@§.height = 20;
         §6@§.x = param2;
         §6@§.y = param3;
         §%!?§.addChild(§6@§);
         §>"1§ = new TextField();
         §>"1§.width = param4;
         §>"1§.height = 20;
         §>"1§.x = param2;
         §>"1§.y = param3 + 20;
         §%!?§.addChild(§>"1§);
         §9!>§(§8!M§);
         if(param6 >= 0)
         {
            param1.addChildAt(§%!?§,param6);
         }
         else
         {
            param1.addChild(§%!?§);
         }
      }
      
      public static function §9!>§(param1:Boolean) : void
      {
         if(!§>!6§)
         {
            return;
         }
         §8!M§ = param1;
         §%!?§.mouseChildren = §8!M§;
         §%!?§.mouseEnabled = §8!M§;
         §6@§.mouseEnabled = §8!M§;
         §>"1§.mouseEnabled = §8!M§;
         §^t§.mouseEnabled = §8!M§;
         §,!m§.visible = §8!M§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§>!6§)
         {
            return;
         }
      }
      
      public static function §!!y§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §]!_§ = param1;
         §[!L§ = param2;
         §@H§ = param3;
      }
      
      public static function §,!2§(param1:String) : void
      {
         §'c§ = param1;
      }
   }
}
