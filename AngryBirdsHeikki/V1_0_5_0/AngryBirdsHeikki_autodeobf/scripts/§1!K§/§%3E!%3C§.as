package §1!K§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §>!<§
   {
      
      public static const §1f§:Boolean = true;
      
      public static const §%!B§:Boolean = true;
      
      public static const §6!N§:int = 0;
      
      public static const §1_§:int = 1;
      
      public static const §0!8§:int = 500;
      
      private static var §&^§:Array = null;
      
      private static var §-!<§:Number = 0;
      
      public static var §]![§:int = Keyboard.F1;
      
      public static var §3!<§:int = Keyboard.F3;
      
      public static var §1,§:int = Keyboard.F2;
      
      public static var §?!,§:int = Keyboard.F4;
      
      public static var §@2§:Boolean = false;
      
      public static var §@W§:Sprite = null;
      
      private static var §9t§:TextField = null;
      
      private static var §0!%§:TextField = null;
      
      private static var §%=§:TextField = null;
      
      private static var §'l§:TextField = null;
      
      public static var §?!'§:int = -1;
      
      public static var §-!#§:String = "version: Unknown";
      
      public static var §7d§:String = "";
      
      {
         init();
      }
      
      public function §>!<§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§1f§)
         {
            return;
         }
         §&^§ = new Array(§0!8§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§1f§)
         {
            _loc3_ = §-!<§++ % §0!8§;
            §&^§[_loc3_] = [param1,param2];
            if(param2 == §?!'§ || §?!'§ < 0)
            {
               §^=§();
            }
         }
         if(§%!B§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §9!<§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §^=§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§1f§)
         {
            return;
         }
         if(§@W§ && §@W§.visible)
         {
            if(§?!'§ < 0)
            {
               §%=§.text = "Current channel: ALL";
            }
            else
            {
               §%=§.text = "Current channel: " + §?!'§;
            }
            if(§-!#§ != null)
            {
               §'l§.text = §-!#§;
            }
            _loc1_ = true;
            if(§9t§.scrollV != §9t§.numLines - int(§9t§.height / (§9t§.textHeight / §9t§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §0!8§)
            {
               _loc4_ = (§-!<§ + _loc3_ + 1) % 500;
               if(§&^§[_loc4_] != null)
               {
                  if(§?!'§ < 0 || §&^§[_loc4_][1] == §?!'§)
                  {
                     _loc2_ += §&^§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §9t§.text = _loc2_;
            if(_loc1_)
            {
               §9t§.scrollV = §9t§.numLines;
            }
         }
      }
      
      public static function §0e§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§1f§)
         {
            return;
         }
         §@W§ = new Sprite();
         §@W§.visible = false;
         param1.addChild(§@W§);
         var _loc7_:Graphics;
         (_loc7_ = §@W§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §9t§ = new TextField();
         §9t§.width = param4;
         §9t§.height = param5 - 40;
         §9t§.x = param2;
         §9t§.y = param3 + 40;
         §9t§.wordWrap = true;
         §@W§.addChild(§9t§);
         §0!%§ = new TextField();
         §0!%§.x = param2 + param4 / 2;
         §0!%§.y = param3;
         §0!%§.width = param4 / 2;
         §0!%§.height = 20;
         §0!%§.text = "LOGGER CAPTURING INPUT, F4";
         §0!%§.border = true;
         §0!%§.borderColor = 16711680;
         §@W§.addChild(§0!%§);
         §%=§ = new TextField();
         §%=§.width = param4;
         §%=§.height = 20;
         §%=§.x = param2;
         §%=§.y = param3;
         §@W§.addChild(§%=§);
         §'l§ = new TextField();
         §'l§.width = param4;
         §'l§.height = 20;
         §'l§.x = param2;
         §'l§.y = param3 + 20;
         §@W§.addChild(§'l§);
         §?e§(§@2§);
         if(param6 >= 0)
         {
            param1.addChildAt(§@W§,param6);
         }
         else
         {
            param1.addChild(§@W§);
         }
      }
      
      public static function §?e§(param1:Boolean) : void
      {
         if(!§1f§)
         {
            return;
         }
         §@2§ = param1;
         §@W§.mouseChildren = §@2§;
         §@W§.mouseEnabled = §@2§;
         §%=§.mouseEnabled = §@2§;
         §'l§.mouseEnabled = §@2§;
         §9t§.mouseEnabled = §@2§;
         §0!%§.visible = §@2§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§1f§)
         {
            return;
         }
      }
      
      public static function §8!@§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §]![§ = param1;
         §1,§ = param2;
         §3!<§ = param3;
      }
      
      public static function §[!a§(param1:String) : void
      {
         §-!#§ = param1;
      }
   }
}
