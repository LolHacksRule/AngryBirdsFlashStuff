package §&N§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §@,§
   {
      
      public static const §4h§:Boolean = true;
      
      public static const §+;§:Boolean = true;
      
      public static const §-v§:int = 0;
      
      public static const §+e§:int = 1;
      
      public static const §0X§:int = 500;
      
      private static var §1z§:Array = null;
      
      private static var §8s§:Number = 0;
      
      public static var §`?§:int = Keyboard.F1;
      
      public static var §-d§:int = Keyboard.F3;
      
      public static var §^;§:int = Keyboard.F2;
      
      public static var §?@§:int = Keyboard.F4;
      
      public static var §@!6§:Boolean = false;
      
      public static var §?!'§:Sprite = null;
      
      private static var §7u§:TextField = null;
      
      private static var §'J§:TextField = null;
      
      private static var §`d§:TextField = null;
      
      private static var §`!H§:TextField = null;
      
      public static var §4!B§:int = -1;
      
      public static var §,f§:String = "version: Unknown";
      
      public static var §]'§:String = "";
      
      {
         init();
      }
      
      public function §@,§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§4h§)
         {
            return;
         }
         §1z§ = new Array(§0X§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§4h§)
         {
            _loc3_ = §8s§++ % §0X§;
            §1z§[_loc3_] = [param1,param2];
            if(param2 == §4!B§ || §4!B§ < 0)
            {
               §@9§();
            }
         }
         if(§+;§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §`0§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §@9§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§4h§)
         {
            return;
         }
         if(§?!'§ && §?!'§.visible)
         {
            if(§4!B§ < 0)
            {
               §`d§.text = "Current channel: ALL";
            }
            else
            {
               §`d§.text = "Current channel: " + §4!B§;
            }
            if(§,f§ != null)
            {
               §`!H§.text = §,f§;
            }
            _loc1_ = true;
            if(§7u§.scrollV != §7u§.numLines - int(§7u§.height / (§7u§.textHeight / §7u§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §0X§)
            {
               _loc4_ = (§8s§ + _loc3_ + 1) % 500;
               if(§1z§[_loc4_] != null)
               {
                  if(§4!B§ < 0 || §1z§[_loc4_][1] == §4!B§)
                  {
                     _loc2_ += §1z§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §7u§.text = _loc2_;
            if(_loc1_)
            {
               §7u§.scrollV = §7u§.numLines;
            }
         }
      }
      
      public static function §?!U§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§4h§)
         {
            return;
         }
         §?!'§ = new Sprite();
         §?!'§.visible = false;
         param1.addChild(§?!'§);
         var _loc7_:Graphics;
         (_loc7_ = §?!'§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §7u§ = new TextField();
         §7u§.width = param4;
         §7u§.height = param5 - 40;
         §7u§.x = param2;
         §7u§.y = param3 + 40;
         §7u§.wordWrap = true;
         §?!'§.addChild(§7u§);
         §'J§ = new TextField();
         §'J§.x = param2 + param4 / 2;
         §'J§.y = param3;
         §'J§.width = param4 / 2;
         §'J§.height = 20;
         §'J§.text = "LOGGER CAPTURING INPUT, F4";
         §'J§.border = true;
         §'J§.borderColor = 16711680;
         §?!'§.addChild(§'J§);
         §`d§ = new TextField();
         §`d§.width = param4;
         §`d§.height = 20;
         §`d§.x = param2;
         §`d§.y = param3;
         §?!'§.addChild(§`d§);
         §`!H§ = new TextField();
         §`!H§.width = param4;
         §`!H§.height = 20;
         §`!H§.x = param2;
         §`!H§.y = param3 + 20;
         §?!'§.addChild(§`!H§);
         §2!O§(§@!6§);
         if(param6 >= 0)
         {
            param1.addChildAt(§?!'§,param6);
         }
         else
         {
            param1.addChild(§?!'§);
         }
      }
      
      public static function §2!O§(param1:Boolean) : void
      {
         if(!§4h§)
         {
            return;
         }
         §@!6§ = param1;
         §?!'§.mouseChildren = §@!6§;
         §?!'§.mouseEnabled = §@!6§;
         §`d§.mouseEnabled = §@!6§;
         §`!H§.mouseEnabled = §@!6§;
         §7u§.mouseEnabled = §@!6§;
         §'J§.visible = §@!6§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§4h§)
         {
            return;
         }
      }
      
      public static function §4!Q§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §`?§ = param1;
         §^;§ = param2;
         §-d§ = param3;
      }
      
      public static function §=L§(param1:String) : void
      {
         §,f§ = param1;
      }
   }
}
