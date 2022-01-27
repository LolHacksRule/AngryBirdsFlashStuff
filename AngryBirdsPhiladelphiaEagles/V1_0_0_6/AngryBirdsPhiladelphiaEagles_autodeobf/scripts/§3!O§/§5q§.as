package §3!O§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §5q§
   {
      
      public static const §`d§:Boolean = true;
      
      public static const §!&§:Boolean = true;
      
      public static const §32§:int = 0;
      
      public static const §%!O§:int = 1;
      
      public static const §6!D§:int = 500;
      
      private static var §9V§:Array = null;
      
      private static var §17§:Number = 0;
      
      public static var §3;§:int = Keyboard.F1;
      
      public static var §9'§:int = Keyboard.F3;
      
      public static var §<!§:int = Keyboard.F2;
      
      public static var §#!$§:int = Keyboard.F4;
      
      public static var §>H§:Boolean = false;
      
      public static var §;6§:Sprite = null;
      
      private static var §`t§:TextField = null;
      
      private static var §]w§:TextField = null;
      
      private static var §^!J§:TextField = null;
      
      private static var §->§:TextField = null;
      
      public static var §45§:int = -1;
      
      public static var §5U§:String = "version: Unknown";
      
      public static var §7Z§:String = "";
      
      {
         init();
      }
      
      public function §5q§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§`d§)
         {
            return;
         }
         §9V§ = new Array(§6!D§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§`d§)
         {
            _loc3_ = §17§++ % §6!D§;
            §9V§[_loc3_] = [param1,param2];
            if(param2 == §45§ || §45§ < 0)
            {
               §7L§();
            }
         }
         if(§!&§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §?2§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §7L§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§`d§)
         {
            return;
         }
         if(§;6§ && §;6§.visible)
         {
            if(§45§ < 0)
            {
               §^!J§.text = "Current channel: ALL";
            }
            else
            {
               §^!J§.text = "Current channel: " + §45§;
            }
            if(§5U§ != null)
            {
               §->§.text = §5U§;
            }
            _loc1_ = true;
            if(§`t§.scrollV != §`t§.numLines - int(§`t§.height / (§`t§.textHeight / §`t§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §6!D§)
            {
               _loc4_ = (§17§ + _loc3_ + 1) % 500;
               if(§9V§[_loc4_] != null)
               {
                  if(§45§ < 0 || §9V§[_loc4_][1] == §45§)
                  {
                     _loc2_ += §9V§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §`t§.text = _loc2_;
            if(_loc1_)
            {
               §`t§.scrollV = §`t§.numLines;
            }
         }
      }
      
      public static function §-y§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§`d§)
         {
            return;
         }
         §;6§ = new Sprite();
         §;6§.visible = false;
         param1.addChild(§;6§);
         var _loc7_:Graphics;
         (_loc7_ = §;6§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §`t§ = new TextField();
         §`t§.width = param4;
         §`t§.height = param5 - 40;
         §`t§.x = param2;
         §`t§.y = param3 + 40;
         §`t§.wordWrap = true;
         §;6§.addChild(§`t§);
         §]w§ = new TextField();
         §]w§.x = param2 + param4 / 2;
         §]w§.y = param3;
         §]w§.width = param4 / 2;
         §]w§.height = 20;
         §]w§.text = "LOGGER CAPTURING INPUT, F4";
         §]w§.border = true;
         §]w§.borderColor = 16711680;
         §;6§.addChild(§]w§);
         §^!J§ = new TextField();
         §^!J§.width = param4;
         §^!J§.height = 20;
         §^!J§.x = param2;
         §^!J§.y = param3;
         §;6§.addChild(§^!J§);
         §->§ = new TextField();
         §->§.width = param4;
         §->§.height = 20;
         §->§.x = param2;
         §->§.y = param3 + 20;
         §;6§.addChild(§->§);
         §`!1§(§>H§);
         if(param6 >= 0)
         {
            param1.addChildAt(§;6§,param6);
         }
         else
         {
            param1.addChild(§;6§);
         }
      }
      
      public static function §`!1§(param1:Boolean) : void
      {
         if(!§`d§)
         {
            return;
         }
         §>H§ = param1;
         §;6§.mouseChildren = §>H§;
         §;6§.mouseEnabled = §>H§;
         §^!J§.mouseEnabled = §>H§;
         §->§.mouseEnabled = §>H§;
         §`t§.mouseEnabled = §>H§;
         §]w§.visible = §>H§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§`d§)
         {
            return;
         }
      }
      
      public static function § L§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §3;§ = param1;
         §<!§ = param2;
         §9'§ = param3;
      }
      
      public static function §`w§(param1:String) : void
      {
         §5U§ = param1;
      }
   }
}
