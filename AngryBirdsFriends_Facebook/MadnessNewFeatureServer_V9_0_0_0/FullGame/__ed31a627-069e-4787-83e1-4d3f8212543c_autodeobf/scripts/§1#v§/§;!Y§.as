package §1#v§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §;!Y§
   {
      
      public static const §&!9§:Boolean = true;
      
      public static const §@y§:Boolean = true;
      
      public static const §9l§:int = 0;
      
      public static const §"k§:int = 1;
      
      public static const §0$6§:int = 500;
      
      private static var § !5§:Array = null;
      
      private static var §"n§:Number = 0;
      
      public static var §2!W§:int = Keyboard.F1;
      
      public static var §[!3§:int = Keyboard.F3;
      
      public static var §;K§:int = Keyboard.F2;
      
      public static var §6Q§:int = Keyboard.F4;
      
      public static var §@!]§:Boolean = false;
      
      public static var §5#L§:Sprite = null;
      
      private static var §7#w§:TextField = null;
      
      private static var §05§:TextField = null;
      
      private static var §-"#§:TextField = null;
      
      private static var §^R§:TextField = null;
      
      public static var §<#$§:int = -1;
      
      public static var §2#M§:String = "version: Unknown";
      
      public static var §>"`§:String = "";
      
      {
         init();
      }
      
      public function §;!Y§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§&!9§)
         {
            return;
         }
         § !5§ = new Array(§0$6§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§&!9§)
         {
            _loc3_ = §"n§++ % §0$6§;
            § !5§[_loc3_] = [param1,param2];
            if(param2 == §<#$§ || §<#$§ < 0)
            {
               §1m§();
            }
         }
         if(§@y§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §9m§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §1m§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§&!9§)
         {
            return;
         }
         if(§5#L§ && §5#L§.visible)
         {
            if(§<#$§ < 0)
            {
               §-"#§.text = "Current channel: ALL";
            }
            else
            {
               §-"#§.text = "Current channel: " + §<#$§;
            }
            if(§2#M§ != null)
            {
               §^R§.text = §2#M§;
            }
            _loc1_ = true;
            if(§7#w§.scrollV != §7#w§.numLines - int(§7#w§.height / (§7#w§.textHeight / §7#w§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §0$6§)
            {
               _loc4_ = (§"n§ + _loc3_ + 1) % 500;
               if(§ !5§[_loc4_] != null)
               {
                  if(§<#$§ < 0 || § !5§[_loc4_][1] == §<#$§)
                  {
                     _loc2_ += § !5§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §7#w§.text = _loc2_;
            if(_loc1_)
            {
               §7#w§.scrollV = §7#w§.numLines;
            }
         }
      }
      
      public static function §^K§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§&!9§)
         {
            return;
         }
         §5#L§ = new Sprite();
         §5#L§.visible = false;
         param1.addChild(§5#L§);
         var _loc7_:Graphics;
         (_loc7_ = §5#L§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §7#w§ = new TextField();
         §7#w§.width = param4;
         §7#w§.height = param5 - 40;
         §7#w§.x = param2;
         §7#w§.y = param3 + 40;
         §7#w§.wordWrap = true;
         §5#L§.addChild(§7#w§);
         §05§ = new TextField();
         §05§.x = param2 + param4 / 2;
         §05§.y = param3;
         §05§.width = param4 / 2;
         §05§.height = 20;
         §05§.text = "LOGGER CAPTURING INPUT, F4";
         §05§.border = true;
         §05§.borderColor = 16711680;
         §5#L§.addChild(§05§);
         §-"#§ = new TextField();
         §-"#§.width = param4;
         §-"#§.height = 20;
         §-"#§.x = param2;
         §-"#§.y = param3;
         §5#L§.addChild(§-"#§);
         §^R§ = new TextField();
         §^R§.width = param4;
         §^R§.height = 20;
         §^R§.x = param2;
         §^R§.y = param3 + 20;
         §5#L§.addChild(§^R§);
         §>#H§(§@!]§);
         if(param6 >= 0)
         {
            param1.addChildAt(§5#L§,param6);
         }
         else
         {
            param1.addChild(§5#L§);
         }
      }
      
      public static function §>#H§(param1:Boolean) : void
      {
         if(!§&!9§)
         {
            return;
         }
         §@!]§ = param1;
         §5#L§.mouseChildren = §@!]§;
         §5#L§.mouseEnabled = §@!]§;
         §-"#§.mouseEnabled = §@!]§;
         §^R§.mouseEnabled = §@!]§;
         §7#w§.mouseEnabled = §@!]§;
         §05§.visible = §@!]§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§&!9§)
         {
            return;
         }
      }
      
      public static function §>F§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §2!W§ = param1;
         §;K§ = param2;
         §[!3§ = param3;
      }
      
      public static function §3$D§(param1:String) : void
      {
         §2#M§ = param1;
      }
   }
}
