package §9#K§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §=#f§
   {
      
      public static const §0$6§:Boolean = true;
      
      public static const §2"G§:Boolean = true;
      
      public static const §1N§:int = 0;
      
      public static const §<;§:int = 1;
      
      public static const §9#D§:int = 500;
      
      private static var §,!-§:Array = null;
      
      private static var §"$0§:Number = 0;
      
      public static var §78§:int = Keyboard.F1;
      
      public static var §,#Z§:int = Keyboard.F3;
      
      public static var §#!C§:int = Keyboard.F2;
      
      public static var §3k§:int = Keyboard.F4;
      
      public static var §1#;§:Boolean = false;
      
      public static var §@$$§:Sprite = null;
      
      private static var § $3§:TextField = null;
      
      private static var §2l§:TextField = null;
      
      private static var §^C§:TextField = null;
      
      private static var §9"P§:TextField = null;
      
      public static var §4!N§:int = -1;
      
      public static var §;G§:String = "version: Unknown";
      
      public static var §]#U§:String = "";
      
      {
         init();
      }
      
      public function §=#f§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§0$6§)
         {
            return;
         }
         §,!-§ = new Array(§9#D§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§0$6§)
         {
            _loc3_ = §"$0§++ % §9#D§;
            §,!-§[_loc3_] = [param1,param2];
            if(param2 == §4!N§ || §4!N§ < 0)
            {
               §7!c§();
            }
         }
         if(§2"G§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §[#]§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §7!c§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§0$6§)
         {
            return;
         }
         if(§@$$§ && §@$$§.visible)
         {
            if(§4!N§ < 0)
            {
               §^C§.text = "Current channel: ALL";
            }
            else
            {
               §^C§.text = "Current channel: " + §4!N§;
            }
            if(§;G§ != null)
            {
               §9"P§.text = §;G§;
            }
            _loc1_ = true;
            if(§ $3§.scrollV != § $3§.numLines - int(§ $3§.height / (§ $3§.textHeight / § $3§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §9#D§)
            {
               _loc4_ = (§"$0§ + _loc3_ + 1) % 500;
               if(§,!-§[_loc4_] != null)
               {
                  if(§4!N§ < 0 || §,!-§[_loc4_][1] == §4!N§)
                  {
                     _loc2_ += §,!-§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            § $3§.text = _loc2_;
            if(_loc1_)
            {
               § $3§.scrollV = § $3§.numLines;
            }
         }
      }
      
      public static function §-#x§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§0$6§)
         {
            return;
         }
         §@$$§ = new Sprite();
         §@$$§.visible = false;
         param1.addChild(§@$$§);
         var _loc7_:Graphics;
         (_loc7_ = §@$$§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         § $3§ = new TextField();
         § $3§.width = param4;
         § $3§.height = param5 - 40;
         § $3§.x = param2;
         § $3§.y = param3 + 40;
         § $3§.wordWrap = true;
         §@$$§.addChild(§ $3§);
         §2l§ = new TextField();
         §2l§.x = param2 + param4 / 2;
         §2l§.y = param3;
         §2l§.width = param4 / 2;
         §2l§.height = 20;
         §2l§.text = "LOGGER CAPTURING INPUT, F4";
         §2l§.border = true;
         §2l§.borderColor = 16711680;
         §@$$§.addChild(§2l§);
         §^C§ = new TextField();
         §^C§.width = param4;
         §^C§.height = 20;
         §^C§.x = param2;
         §^C§.y = param3;
         §@$$§.addChild(§^C§);
         §9"P§ = new TextField();
         §9"P§.width = param4;
         §9"P§.height = 20;
         §9"P§.x = param2;
         §9"P§.y = param3 + 20;
         §@$$§.addChild(§9"P§);
         §!H§(§1#;§);
         if(param6 >= 0)
         {
            param1.addChildAt(§@$$§,param6);
         }
         else
         {
            param1.addChild(§@$$§);
         }
      }
      
      public static function §!H§(param1:Boolean) : void
      {
         if(!§0$6§)
         {
            return;
         }
         §1#;§ = param1;
         §@$$§.mouseChildren = §1#;§;
         §@$$§.mouseEnabled = §1#;§;
         §^C§.mouseEnabled = §1#;§;
         §9"P§.mouseEnabled = §1#;§;
         § $3§.mouseEnabled = §1#;§;
         §2l§.visible = §1#;§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§0$6§)
         {
            return;
         }
      }
      
      public static function §2$,§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §78§ = param1;
         §#!C§ = param2;
         §,#Z§ = param3;
      }
      
      public static function §=Q§(param1:String) : void
      {
         §;G§ = param1;
      }
   }
}
