package each
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §!!'§
   {
      
      public static const §0'§:Boolean = true;
      
      public static const §9a§:Boolean = true;
      
      public static const §]!a§:int = 0;
      
      public static const §5W§:int = 1;
      
      public static const §#V§:int = 500;
      
      private static var §&!z§:Array = null;
      
      private static var §#!<§:Number = 0;
      
      public static var §-!h§:int = Keyboard.F1;
      
      public static var §;V§:int = Keyboard.F3;
      
      public static var §[!p§:int = Keyboard.F2;
      
      public static var §+!^§:int = Keyboard.F4;
      
      public static var §6o§:Boolean = false;
      
      public static var §;!z§:Sprite = null;
      
      private static var §8!X§:TextField = null;
      
      private static var §2R§:TextField = null;
      
      private static var §>m§:TextField = null;
      
      private static var §-!_§:TextField = null;
      
      public static var §7!B§:int = -1;
      
      public static var §^c§:String = "version: Unknown";
      
      public static var §1"-§:String = "";
      
      {
         init();
      }
      
      public function §!!'§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§0'§)
         {
            return;
         }
         §&!z§ = new Array(§#V§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§0'§)
         {
            _loc3_ = §#!<§++ % §#V§;
            §&!z§[_loc3_] = [param1,param2];
            if(param2 == §7!B§ || §7!B§ < 0)
            {
               §+!L§();
            }
         }
         if(§9a§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §2!j§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §+!L§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§0'§)
         {
            return;
         }
         if(§;!z§ && §;!z§.visible)
         {
            if(§7!B§ < 0)
            {
               §>m§.text = "Current channel: ALL";
            }
            else
            {
               §>m§.text = "Current channel: " + §7!B§;
            }
            if(§^c§ != null)
            {
               §-!_§.text = §^c§;
            }
            _loc1_ = true;
            if(§8!X§.scrollV != §8!X§.numLines - int(§8!X§.height / (§8!X§.textHeight / §8!X§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §#V§)
            {
               _loc4_ = (§#!<§ + _loc3_ + 1) % 500;
               if(§&!z§[_loc4_] != null)
               {
                  if(§7!B§ < 0 || §&!z§[_loc4_][1] == §7!B§)
                  {
                     _loc2_ += §&!z§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §8!X§.text = _loc2_;
            if(_loc1_)
            {
               §8!X§.scrollV = §8!X§.numLines;
            }
         }
      }
      
      public static function §'k§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§0'§)
         {
            return;
         }
         §;!z§ = new Sprite();
         §;!z§.visible = false;
         param1.addChild(§;!z§);
         var _loc7_:Graphics;
         (_loc7_ = §;!z§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §8!X§ = new TextField();
         §8!X§.width = param4;
         §8!X§.height = param5 - 40;
         §8!X§.x = param2;
         §8!X§.y = param3 + 40;
         §8!X§.wordWrap = true;
         §;!z§.addChild(§8!X§);
         §2R§ = new TextField();
         §2R§.x = param2 + param4 / 2;
         §2R§.y = param3;
         §2R§.width = param4 / 2;
         §2R§.height = 20;
         §2R§.text = "LOGGER CAPTURING INPUT, F4";
         §2R§.border = true;
         §2R§.borderColor = 16711680;
         §;!z§.addChild(§2R§);
         §>m§ = new TextField();
         §>m§.width = param4;
         §>m§.height = 20;
         §>m§.x = param2;
         §>m§.y = param3;
         §;!z§.addChild(§>m§);
         §-!_§ = new TextField();
         §-!_§.width = param4;
         §-!_§.height = 20;
         §-!_§.x = param2;
         §-!_§.y = param3 + 20;
         §;!z§.addChild(§-!_§);
         §&!E§(§6o§);
         if(param6 >= 0)
         {
            param1.addChildAt(§;!z§,param6);
         }
         else
         {
            param1.addChild(§;!z§);
         }
      }
      
      public static function §&!E§(param1:Boolean) : void
      {
         if(!§0'§)
         {
            return;
         }
         §6o§ = param1;
         §;!z§.mouseChildren = §6o§;
         §;!z§.mouseEnabled = §6o§;
         §>m§.mouseEnabled = §6o§;
         §-!_§.mouseEnabled = §6o§;
         §8!X§.mouseEnabled = §6o§;
         §2R§.visible = §6o§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§0'§)
         {
            return;
         }
      }
      
      public static function §5!T§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §-!h§ = param1;
         §[!p§ = param2;
         §;V§ = param3;
      }
      
      public static function §<K§(param1:String) : void
      {
         §^c§ = param1;
      }
   }
}
