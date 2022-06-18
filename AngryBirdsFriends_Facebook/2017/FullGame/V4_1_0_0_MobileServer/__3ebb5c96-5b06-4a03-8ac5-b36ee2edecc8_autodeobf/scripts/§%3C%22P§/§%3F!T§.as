package §<"p§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §?!T§
   {
      
      public static const §`d§:Boolean = true;
      
      public static const §!"]§:Boolean = true;
      
      public static const §7$<§:int = 0;
      
      public static const §#!_§:int = 1;
      
      public static const §""S§:int = 500;
      
      private static var §?o§:Array = null;
      
      private static var §@!0§:Number = 0;
      
      public static var §&!l§:int = Keyboard.F1;
      
      public static var §;#n§:int = Keyboard.F3;
      
      public static var §`![§:int = Keyboard.F2;
      
      public static var §="`§:int = Keyboard.F4;
      
      public static var §?"<§:Boolean = false;
      
      public static var §3#W§:Sprite = null;
      
      private static var §<C§:TextField = null;
      
      private static var § !B§:TextField = null;
      
      private static var §@!9§:TextField = null;
      
      private static var § E§:TextField = null;
      
      public static var §,"Z§:int = -1;
      
      public static var §?!u§:String = "version: Unknown";
      
      public static var §,"&§:String = "";
      
      {
         init();
      }
      
      public function §?!T§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§`d§)
         {
            return;
         }
         §?o§ = new Array(§""S§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§`d§)
         {
            _loc3_ = §@!0§++ % §""S§;
            §?o§[_loc3_] = [param1,param2];
            if(param2 == §,"Z§ || §,"Z§ < 0)
            {
               §%!Z§();
            }
         }
         if(§!"]§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §["§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §%!Z§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§`d§)
         {
            return;
         }
         if(§3#W§ && §3#W§.visible)
         {
            if(§,"Z§ < 0)
            {
               §@!9§.text = "Current channel: ALL";
            }
            else
            {
               §@!9§.text = "Current channel: " + §,"Z§;
            }
            if(§?!u§ != null)
            {
               § E§.text = §?!u§;
            }
            _loc1_ = true;
            if(§<C§.scrollV != §<C§.numLines - int(§<C§.height / (§<C§.textHeight / §<C§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §""S§)
            {
               _loc4_ = (§@!0§ + _loc3_ + 1) % 500;
               if(§?o§[_loc4_] != null)
               {
                  if(§,"Z§ < 0 || §?o§[_loc4_][1] == §,"Z§)
                  {
                     _loc2_ += §?o§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §<C§.text = _loc2_;
            if(_loc1_)
            {
               §<C§.scrollV = §<C§.numLines;
            }
         }
      }
      
      public static function §8#k§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§`d§)
         {
            return;
         }
         §3#W§ = new Sprite();
         §3#W§.visible = false;
         param1.addChild(§3#W§);
         var _loc7_:Graphics;
         (_loc7_ = §3#W§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §<C§ = new TextField();
         §<C§.width = param4;
         §<C§.height = param5 - 40;
         §<C§.x = param2;
         §<C§.y = param3 + 40;
         §<C§.wordWrap = true;
         §3#W§.addChild(§<C§);
         § !B§ = new TextField();
         § !B§.x = param2 + param4 / 2;
         § !B§.y = param3;
         § !B§.width = param4 / 2;
         § !B§.height = 20;
         § !B§.text = "LOGGER CAPTURING INPUT, F4";
         § !B§.border = true;
         § !B§.borderColor = 16711680;
         §3#W§.addChild(§ !B§);
         §@!9§ = new TextField();
         §@!9§.width = param4;
         §@!9§.height = 20;
         §@!9§.x = param2;
         §@!9§.y = param3;
         §3#W§.addChild(§@!9§);
         § E§ = new TextField();
         § E§.width = param4;
         § E§.height = 20;
         § E§.x = param2;
         § E§.y = param3 + 20;
         §3#W§.addChild(§ E§);
         §'a§(§?"<§);
         if(param6 >= 0)
         {
            param1.addChildAt(§3#W§,param6);
         }
         else
         {
            param1.addChild(§3#W§);
         }
      }
      
      public static function §'a§(param1:Boolean) : void
      {
         if(!§`d§)
         {
            return;
         }
         §?"<§ = param1;
         §3#W§.mouseChildren = §?"<§;
         §3#W§.mouseEnabled = §?"<§;
         §@!9§.mouseEnabled = §?"<§;
         § E§.mouseEnabled = §?"<§;
         §<C§.mouseEnabled = §?"<§;
         § !B§.visible = §?"<§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§`d§)
         {
            return;
         }
      }
      
      public static function §#"a§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §&!l§ = param1;
         §`![§ = param2;
         §;#n§ = param3;
      }
      
      public static function §-#y§(param1:String) : void
      {
         §?!u§ = param1;
      }
   }
}
