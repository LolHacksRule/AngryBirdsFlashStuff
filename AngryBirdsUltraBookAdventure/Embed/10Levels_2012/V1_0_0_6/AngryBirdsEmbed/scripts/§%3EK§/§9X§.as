package §>K§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §9X§
   {
      
      public static const §9d§:Boolean = true;
      
      public static const §6!4§:Boolean = true;
      
      public static const §#!,§:int = 0;
      
      public static const §4!G§:int = 1;
      
      public static const §7,§:int = 500;
      
      private static var §+Y§:Array = null;
      
      private static var §^+§:Number = 0;
      
      public static var §=&§:int = Keyboard.F1;
      
      public static var §%G§:int = Keyboard.F3;
      
      public static var §#!=§:int = Keyboard.F2;
      
      public static var §2P§:int = Keyboard.F4;
      
      public static var §4X§:Boolean = false;
      
      public static var §,@§:Sprite = null;
      
      private static var §1e§:TextField = null;
      
      private static var §%^§:TextField = null;
      
      private static var §5C§:TextField = null;
      
      private static var §[A§:TextField = null;
      
      public static var §&z§:int = -1;
      
      public static var § G§:String = "version: Unknown";
      
      public static var §;n§:String = "";
      
      {
         init();
      }
      
      public function §9X§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§9d§)
         {
            return;
         }
         §+Y§ = new Array(§7,§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§9d§)
         {
            _loc3_ = §^+§++ % §7,§;
            §+Y§[_loc3_] = [param1,param2];
            if(param2 == §&z§ || §&z§ < 0)
            {
               §1n§();
            }
         }
         if(§6!4§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §^B§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §1n§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§9d§)
         {
            return;
         }
         if(§,@§ && §,@§.visible)
         {
            if(§&z§ < 0)
            {
               §5C§.text = "Current channel: ALL";
            }
            else
            {
               §5C§.text = "Current channel: " + §&z§;
            }
            if(§ G§ != null)
            {
               §[A§.text = § G§;
            }
            _loc1_ = true;
            if(§1e§.scrollV != §1e§.numLines - int(§1e§.height / (§1e§.textHeight / §1e§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §7,§)
            {
               _loc4_ = (§^+§ + _loc3_ + 1) % 500;
               if(§+Y§[_loc4_] != null)
               {
                  if(§&z§ < 0 || §+Y§[_loc4_][1] == §&z§)
                  {
                     _loc2_ += §+Y§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §1e§.text = _loc2_;
            if(_loc1_)
            {
               §1e§.scrollV = §1e§.numLines;
            }
         }
      }
      
      public static function §'!&§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§9d§)
         {
            return;
         }
         §,@§ = new Sprite();
         §,@§.visible = false;
         param1.addChild(§,@§);
         var _loc7_:Graphics;
         (_loc7_ = §,@§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §1e§ = new TextField();
         §1e§.width = param4;
         §1e§.height = param5 - 40;
         §1e§.x = param2;
         §1e§.y = param3 + 40;
         §1e§.wordWrap = true;
         §,@§.addChild(§1e§);
         §%^§ = new TextField();
         §%^§.x = param2 + param4 / 2;
         §%^§.y = param3;
         §%^§.width = param4 / 2;
         §%^§.height = 20;
         §%^§.text = "LOGGER CAPTURING INPUT, F4";
         §%^§.border = true;
         §%^§.borderColor = 16711680;
         §,@§.addChild(§%^§);
         §5C§ = new TextField();
         §5C§.width = param4;
         §5C§.height = 20;
         §5C§.x = param2;
         §5C§.y = param3;
         §,@§.addChild(§5C§);
         §[A§ = new TextField();
         §[A§.width = param4;
         §[A§.height = 20;
         §[A§.x = param2;
         §[A§.y = param3 + 20;
         §,@§.addChild(§[A§);
         §7#§(§4X§);
         if(param6 >= 0)
         {
            param1.addChildAt(§,@§,param6);
         }
         else
         {
            param1.addChild(§,@§);
         }
      }
      
      public static function §7#§(param1:Boolean) : void
      {
         if(!§9d§)
         {
            return;
         }
         §4X§ = param1;
         §,@§.mouseChildren = §4X§;
         §,@§.mouseEnabled = §4X§;
         §5C§.mouseEnabled = §4X§;
         §[A§.mouseEnabled = §4X§;
         §1e§.mouseEnabled = §4X§;
         §%^§.visible = §4X§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§9d§)
         {
            return;
         }
      }
      
      public static function §%8§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §=&§ = param1;
         §#!=§ = param2;
         §%G§ = param3;
      }
      
      public static function §8y§(param1:String) : void
      {
         § G§ = param1;
      }
   }
}
