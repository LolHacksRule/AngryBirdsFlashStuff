package §'6§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §?!L§
   {
      
      public static const §+!D§:Boolean = true;
      
      public static const §2U§:Boolean = true;
      
      public static const §get §:int = 0;
      
      public static const § ! §:int = 1;
      
      public static const §@G§:int = 500;
      
      private static var §<!7§:Array = null;
      
      private static var §<!<§:Number = 0;
      
      public static var §&#§:int = Keyboard.F1;
      
      public static var §<!M§:int = Keyboard.F3;
      
      public static var §0!F§:int = Keyboard.F2;
      
      public static var §,!8§:int = Keyboard.F4;
      
      public static var §6e§:Boolean = false;
      
      public static var §!j§:Sprite = null;
      
      private static var §1[§:TextField = null;
      
      private static var §@#§:TextField = null;
      
      private static var §4!"§:TextField = null;
      
      private static var § !=§:TextField = null;
      
      public static var §4x§:int = -1;
      
      public static var §#%§:String = "version: Unknown";
      
      public static var §0R§:String = "";
      
      {
         init();
      }
      
      public function §?!L§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§+!D§)
         {
            return;
         }
         §<!7§ = new Array(§@G§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§+!D§)
         {
            _loc3_ = §<!<§++ % §@G§;
            §<!7§[_loc3_] = [param1,param2];
            if(param2 == §4x§ || §4x§ < 0)
            {
               §^$§();
            }
         }
         if(§2U§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §0!B§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §^$§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§+!D§)
         {
            return;
         }
         if(§!j§ && §!j§.visible)
         {
            if(§4x§ < 0)
            {
               §4!"§.text = "Current channel: ALL";
            }
            else
            {
               §4!"§.text = "Current channel: " + §4x§;
            }
            if(§#%§ != null)
            {
               § !=§.text = §#%§;
            }
            _loc1_ = true;
            if(§1[§.scrollV != §1[§.numLines - int(§1[§.height / (§1[§.textHeight / §1[§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §@G§)
            {
               _loc4_ = (§<!<§ + _loc3_ + 1) % 500;
               if(§<!7§[_loc4_] != null)
               {
                  if(§4x§ < 0 || §<!7§[_loc4_][1] == §4x§)
                  {
                     _loc2_ += §<!7§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §1[§.text = _loc2_;
            if(_loc1_)
            {
               §1[§.scrollV = §1[§.numLines;
            }
         }
      }
      
      public static function §>$§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§+!D§)
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
         §1[§ = new TextField();
         §1[§.width = param4;
         §1[§.height = param5 - 40;
         §1[§.x = param2;
         §1[§.y = param3 + 40;
         §1[§.wordWrap = true;
         §!j§.addChild(§1[§);
         §@#§ = new TextField();
         §@#§.x = param2 + param4 / 2;
         §@#§.y = param3;
         §@#§.width = param4 / 2;
         §@#§.height = 20;
         §@#§.text = "LOGGER CAPTURING INPUT, F4";
         §@#§.border = true;
         §@#§.borderColor = 16711680;
         §!j§.addChild(§@#§);
         §4!"§ = new TextField();
         §4!"§.width = param4;
         §4!"§.height = 20;
         §4!"§.x = param2;
         §4!"§.y = param3;
         §!j§.addChild(§4!"§);
         § !=§ = new TextField();
         § !=§.width = param4;
         § !=§.height = 20;
         § !=§.x = param2;
         § !=§.y = param3 + 20;
         §!j§.addChild(§ !=§);
         §;E§(§6e§);
         if(param6 >= 0)
         {
            param1.addChildAt(§!j§,param6);
         }
         else
         {
            param1.addChild(§!j§);
         }
      }
      
      public static function §;E§(param1:Boolean) : void
      {
         if(!§+!D§)
         {
            return;
         }
         §6e§ = param1;
         §!j§.mouseChildren = §6e§;
         §!j§.mouseEnabled = §6e§;
         §4!"§.mouseEnabled = §6e§;
         § !=§.mouseEnabled = §6e§;
         §1[§.mouseEnabled = §6e§;
         §@#§.visible = §6e§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§+!D§)
         {
            return;
         }
      }
      
      public static function § in§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §&#§ = param1;
         §0!F§ = param2;
         §<!M§ = param3;
      }
      
      public static function §'!A§(param1:String) : void
      {
         §#%§ = param1;
      }
   }
}
