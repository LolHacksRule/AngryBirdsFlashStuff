package §@,§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §4h§
   {
      
      public static const §+;§:Boolean = true;
      
      public static const §-v§:Boolean = true;
      
      public static const §+e§:int = 0;
      
      public static const §0X§:int = 1;
      
      public static const §1z§:int = 500;
      
      private static var §8s§:Array = null;
      
      private static var §`?§:Number = 0;
      
      public static var §-d§:int = Keyboard.F1;
      
      public static var §^;§:int = Keyboard.F3;
      
      public static var §?@§:int = Keyboard.F2;
      
      public static var §@!6§:int = Keyboard.F4;
      
      public static var §?!'§:Boolean = false;
      
      public static var §7u§:Sprite = null;
      
      private static var §'J§:TextField = null;
      
      private static var §`d§:TextField = null;
      
      private static var §`!H§:TextField = null;
      
      private static var §4!B§:TextField = null;
      
      public static var §,f§:int = -1;
      
      public static var §]'§:String = "version: Unknown";
      
      public static var §`0§:String = "";
      
      {
         init();
      }
      
      public function §4h§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§+;§)
         {
            return;
         }
         §8s§ = new Array(§1z§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§+;§)
         {
            _loc3_ = §`?§++ % §1z§;
            §8s§[_loc3_] = [param1,param2];
            if(param2 == §,f§ || §,f§ < 0)
            {
               §?!U§();
            }
         }
         if(§-v§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §@9§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §?!U§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§+;§)
         {
            return;
         }
         if(§7u§ && §7u§.visible)
         {
            if(§,f§ < 0)
            {
               §`!H§.text = "Current channel: ALL";
            }
            else
            {
               §`!H§.text = "Current channel: " + §,f§;
            }
            if(§]'§ != null)
            {
               §4!B§.text = §]'§;
            }
            _loc1_ = true;
            if(§'J§.scrollV != §'J§.numLines - int(§'J§.height / (§'J§.textHeight / §'J§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §1z§)
            {
               _loc4_ = (§`?§ + _loc3_ + 1) % 500;
               if(§8s§[_loc4_] != null)
               {
                  if(§,f§ < 0 || §8s§[_loc4_][1] == §,f§)
                  {
                     _loc2_ += §8s§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §'J§.text = _loc2_;
            if(_loc1_)
            {
               §'J§.scrollV = §'J§.numLines;
            }
         }
      }
      
      public static function §2!O§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§+;§)
         {
            return;
         }
         §7u§ = new Sprite();
         §7u§.visible = false;
         param1.addChild(§7u§);
         var _loc7_:Graphics;
         (_loc7_ = §7u§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §'J§ = new TextField();
         §'J§.width = param4;
         §'J§.height = param5 - 40;
         §'J§.x = param2;
         §'J§.y = param3 + 40;
         §'J§.wordWrap = true;
         §7u§.addChild(§'J§);
         §`d§ = new TextField();
         §`d§.x = param2 + param4 / 2;
         §`d§.y = param3;
         §`d§.width = param4 / 2;
         §`d§.height = 20;
         §`d§.text = "LOGGER CAPTURING INPUT, F4";
         §`d§.border = true;
         §`d§.borderColor = 16711680;
         §7u§.addChild(§`d§);
         §`!H§ = new TextField();
         §`!H§.width = param4;
         §`!H§.height = 20;
         §`!H§.x = param2;
         §`!H§.y = param3;
         §7u§.addChild(§`!H§);
         §4!B§ = new TextField();
         §4!B§.width = param4;
         §4!B§.height = 20;
         §4!B§.x = param2;
         §4!B§.y = param3 + 20;
         §7u§.addChild(§4!B§);
         §4!Q§(§?!'§);
         if(param6 >= 0)
         {
            param1.addChildAt(§7u§,param6);
         }
         else
         {
            param1.addChild(§7u§);
         }
      }
      
      public static function §4!Q§(param1:Boolean) : void
      {
         if(!§+;§)
         {
            return;
         }
         §?!'§ = param1;
         §7u§.mouseChildren = §?!'§;
         §7u§.mouseEnabled = §?!'§;
         §`!H§.mouseEnabled = §?!'§;
         §4!B§.mouseEnabled = §?!'§;
         §'J§.mouseEnabled = §?!'§;
         §`d§.visible = §?!'§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§+;§)
         {
            return;
         }
      }
      
      public static function §=L§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §-d§ = param1;
         §?@§ = param2;
         §^;§ = param3;
      }
      
      public static function §6§(param1:String) : void
      {
         §]'§ = param1;
      }
   }
}
