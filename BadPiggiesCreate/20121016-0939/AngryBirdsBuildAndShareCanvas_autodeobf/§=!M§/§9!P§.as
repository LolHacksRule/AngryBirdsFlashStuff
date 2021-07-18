package §=!M§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §9!P§
   {
      
      public static const §!!%§:Boolean = true;
      
      public static const §2!o§:Boolean = true;
      
      public static const §4!9§:int = 0;
      
      public static const §-!B§:int = 1;
      
      public static const §9!f§:int = 500;
      
      private static var §!U§:Array = null;
      
      private static var §`;§:Number = 0;
      
      public static var §^!_§:int = Keyboard.F1;
      
      public static var §8">§:int = Keyboard.F3;
      
      public static var § !H§:int = Keyboard.F2;
      
      public static var §5q§:int = Keyboard.F4;
      
      public static var §for§:Boolean = false;
      
      public static var §4!?§:Sprite = null;
      
      private static var §&S§:TextField = null;
      
      private static var §>s§:TextField = null;
      
      private static var §@!o§:TextField = null;
      
      private static var §-";§:TextField = null;
      
      public static var §20§:int = -1;
      
      public static var §-"-§:String = "version: Unknown";
      
      public static var §]!o§:String = "";
      
      {
         init();
      }
      
      public function §9!P§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§!!%§)
         {
            return;
         }
         §!U§ = new Array(§9!f§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§!!%§)
         {
            _loc3_ = §`;§++ % §9!f§;
            §!U§[_loc3_] = [param1,param2];
            if(param2 == §20§ || §20§ < 0)
            {
               §do§();
            }
         }
         if(§2!o§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §8u§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §do§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§!!%§)
         {
            return;
         }
         if(§4!?§ && §4!?§.visible)
         {
            if(§20§ < 0)
            {
               §@!o§.text = "Current channel: ALL";
            }
            else
            {
               §@!o§.text = "Current channel: " + §20§;
            }
            if(§-"-§ != null)
            {
               §-";§.text = §-"-§;
            }
            _loc1_ = true;
            if(§&S§.scrollV != §&S§.numLines - int(§&S§.height / (§&S§.textHeight / §&S§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §9!f§)
            {
               _loc4_ = (§`;§ + _loc3_ + 1) % 500;
               if(§!U§[_loc4_] != null)
               {
                  if(§20§ < 0 || §!U§[_loc4_][1] == §20§)
                  {
                     _loc2_ += §!U§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §&S§.text = _loc2_;
            if(_loc1_)
            {
               §&S§.scrollV = §&S§.numLines;
            }
         }
      }
      
      public static function §4!"§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§!!%§)
         {
            return;
         }
         §4!?§ = new Sprite();
         §4!?§.visible = false;
         param1.addChild(§4!?§);
         var _loc7_:Graphics;
         (_loc7_ = §4!?§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §&S§ = new TextField();
         §&S§.width = param4;
         §&S§.height = param5 - 40;
         §&S§.x = param2;
         §&S§.y = param3 + 40;
         §&S§.wordWrap = true;
         §4!?§.addChild(§&S§);
         §>s§ = new TextField();
         §>s§.x = param2 + param4 / 2;
         §>s§.y = param3;
         §>s§.width = param4 / 2;
         §>s§.height = 20;
         §>s§.text = "LOGGER CAPTURING INPUT, F4";
         §>s§.border = true;
         §>s§.borderColor = 16711680;
         §4!?§.addChild(§>s§);
         §@!o§ = new TextField();
         §@!o§.width = param4;
         §@!o§.height = 20;
         §@!o§.x = param2;
         §@!o§.y = param3;
         §4!?§.addChild(§@!o§);
         §-";§ = new TextField();
         §-";§.width = param4;
         §-";§.height = 20;
         §-";§.x = param2;
         §-";§.y = param3 + 20;
         §4!?§.addChild(§-";§);
         §;"3§(§for§);
         if(param6 >= 0)
         {
            param1.addChildAt(§4!?§,param6);
         }
         else
         {
            param1.addChild(§4!?§);
         }
      }
      
      public static function §;"3§(param1:Boolean) : void
      {
         if(!§!!%§)
         {
            return;
         }
         §for§ = param1;
         §4!?§.mouseChildren = §for§;
         §4!?§.mouseEnabled = §for§;
         §@!o§.mouseEnabled = §for§;
         §-";§.mouseEnabled = §for§;
         §&S§.mouseEnabled = §for§;
         §>s§.visible = §for§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§!!%§)
         {
            return;
         }
      }
      
      public static function §;z§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §^!_§ = param1;
         § !H§ = param2;
         §8">§ = param3;
      }
      
      public static function §#!?§(param1:String) : void
      {
         §-"-§ = param1;
      }
   }
}
