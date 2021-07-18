package §`K§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class § L§
   {
      
      public static const §1!N§:Boolean = true;
      
      public static const §9b§:Boolean = true;
      
      public static const §3?§:int = 0;
      
      public static const §@!5§:int = 1;
      
      public static const §&P§:int = 500;
      
      private static var §^!B§:Array = null;
      
      private static var §9v§:Number = 0;
      
      public static var §1!D§:int = Keyboard.F1;
      
      public static var §`! §:int = Keyboard.F3;
      
      public static var §6>§:int = Keyboard.F2;
      
      public static var §2!?§:int = Keyboard.F4;
      
      public static var §"!9§:Boolean = false;
      
      public static var §5%§:Sprite = null;
      
      private static var §-"§:TextField = null;
      
      private static var §9$§:TextField = null;
      
      private static var §>!,§:TextField = null;
      
      private static var §!!+§:TextField = null;
      
      public static var §>C§:int = -1;
      
      public static var §;!+§:String = "version: Unknown";
      
      public static var §-g§:String = "";
      
      {
         init();
      }
      
      public function § L§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§1!N§)
         {
            return;
         }
         §^!B§ = new Array(§&P§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§1!N§)
         {
            _loc3_ = §9v§++ % §&P§;
            §^!B§[_loc3_] = [param1,param2];
            if(param2 == §>C§ || §>C§ < 0)
            {
               §;g§();
            }
         }
         if(§9b§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §;!'§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §;g§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§1!N§)
         {
            return;
         }
         if(§5%§ && §5%§.visible)
         {
            if(§>C§ < 0)
            {
               §>!,§.text = "Current channel: ALL";
            }
            else
            {
               §>!,§.text = "Current channel: " + §>C§;
            }
            if(§;!+§ != null)
            {
               §!!+§.text = §;!+§;
            }
            _loc1_ = true;
            if(§-"§.scrollV != §-"§.numLines - int(§-"§.height / (§-"§.textHeight / §-"§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §&P§)
            {
               _loc4_ = (§9v§ + _loc3_ + 1) % 500;
               if(§^!B§[_loc4_] != null)
               {
                  if(§>C§ < 0 || §^!B§[_loc4_][1] == §>C§)
                  {
                     _loc2_ += §^!B§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §-"§.text = _loc2_;
            if(_loc1_)
            {
               §-"§.scrollV = §-"§.numLines;
            }
         }
      }
      
      public static function §2e§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§1!N§)
         {
            return;
         }
         §5%§ = new Sprite();
         §5%§.visible = false;
         param1.addChild(§5%§);
         var _loc7_:Graphics;
         (_loc7_ = §5%§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §-"§ = new TextField();
         §-"§.width = param4;
         §-"§.height = param5 - 40;
         §-"§.x = param2;
         §-"§.y = param3 + 40;
         §-"§.wordWrap = true;
         §5%§.addChild(§-"§);
         §9$§ = new TextField();
         §9$§.x = param2 + param4 / 2;
         §9$§.y = param3;
         §9$§.width = param4 / 2;
         §9$§.height = 20;
         §9$§.text = "LOGGER CAPTURING INPUT, F4";
         §9$§.border = true;
         §9$§.borderColor = 16711680;
         §5%§.addChild(§9$§);
         §>!,§ = new TextField();
         §>!,§.width = param4;
         §>!,§.height = 20;
         §>!,§.x = param2;
         §>!,§.y = param3;
         §5%§.addChild(§>!,§);
         §!!+§ = new TextField();
         §!!+§.width = param4;
         §!!+§.height = 20;
         §!!+§.x = param2;
         §!!+§.y = param3 + 20;
         §5%§.addChild(§!!+§);
         §?!!§(§"!9§);
         if(param6 >= 0)
         {
            param1.addChildAt(§5%§,param6);
         }
         else
         {
            param1.addChild(§5%§);
         }
      }
      
      public static function §?!!§(param1:Boolean) : void
      {
         if(!§1!N§)
         {
            return;
         }
         §"!9§ = param1;
         §5%§.mouseChildren = §"!9§;
         §5%§.mouseEnabled = §"!9§;
         §>!,§.mouseEnabled = §"!9§;
         §!!+§.mouseEnabled = §"!9§;
         §-"§.mouseEnabled = §"!9§;
         §9$§.visible = §"!9§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§1!N§)
         {
            return;
         }
      }
      
      public static function §;_§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §1!D§ = param1;
         §6>§ = param2;
         §`! § = param3;
      }
      
      public static function §8;§(param1:String) : void
      {
         §;!+§ = param1;
      }
   }
}
