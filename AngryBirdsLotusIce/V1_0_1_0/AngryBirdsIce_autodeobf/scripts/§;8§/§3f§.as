package §;8§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §3f§
   {
      
      public static const §7C§:Boolean = true;
      
      public static const §?D§:Boolean = true;
      
      public static const §!!$§:int = 0;
      
      public static const §;n§:int = 1;
      
      public static const §3! §:int = 500;
      
      private static var §@f§:Array = null;
      
      private static var §,n§:Number = 0;
      
      public static var §#>§:int = Keyboard.F1;
      
      public static var §[!A§:int = Keyboard.F3;
      
      public static var §%%§:int = Keyboard.F2;
      
      public static var §3!9§:int = Keyboard.F4;
      
      public static var §<!%§:Boolean = false;
      
      public static var §5!2§:Sprite = null;
      
      private static var §#]§:TextField = null;
      
      private static var §"!&§:TextField = null;
      
      private static var §`N§:TextField = null;
      
      private static var §3z§:TextField = null;
      
      public static var § I§:int = -1;
      
      public static var §7f§:String = "version: Unknown";
      
      public static var §;E§:String = "";
      
      {
         init();
      }
      
      public function §3f§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§7C§)
         {
            return;
         }
         §@f§ = new Array(§3! §);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§7C§)
         {
            _loc3_ = §,n§++ % §3! §;
            §@f§[_loc3_] = [param1,param2];
            if(param2 == § I§ || § I§ < 0)
            {
               §#s§();
            }
         }
         if(§?D§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §5G§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §#s§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§7C§)
         {
            return;
         }
         if(§5!2§ && §5!2§.visible)
         {
            if(§ I§ < 0)
            {
               §`N§.text = "Current channel: ALL";
            }
            else
            {
               §`N§.text = "Current channel: " + § I§;
            }
            if(§7f§ != null)
            {
               §3z§.text = §7f§;
            }
            _loc1_ = true;
            if(§#]§.scrollV != §#]§.numLines - int(§#]§.height / (§#]§.textHeight / §#]§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §3! §)
            {
               _loc4_ = (§,n§ + _loc3_ + 1) % 500;
               if(§@f§[_loc4_] != null)
               {
                  if(§ I§ < 0 || §@f§[_loc4_][1] == § I§)
                  {
                     _loc2_ += §@f§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §#]§.text = _loc2_;
            if(_loc1_)
            {
               §#]§.scrollV = §#]§.numLines;
            }
         }
      }
      
      public static function §=a§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§7C§)
         {
            return;
         }
         §5!2§ = new Sprite();
         §5!2§.visible = false;
         param1.addChild(§5!2§);
         var _loc7_:Graphics;
         (_loc7_ = §5!2§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §#]§ = new TextField();
         §#]§.width = param4;
         §#]§.height = param5 - 40;
         §#]§.x = param2;
         §#]§.y = param3 + 40;
         §#]§.wordWrap = true;
         §5!2§.addChild(§#]§);
         §"!&§ = new TextField();
         §"!&§.x = param2 + param4 / 2;
         §"!&§.y = param3;
         §"!&§.width = param4 / 2;
         §"!&§.height = 20;
         §"!&§.text = "LOGGER CAPTURING INPUT, F4";
         §"!&§.border = true;
         §"!&§.borderColor = 16711680;
         §5!2§.addChild(§"!&§);
         §`N§ = new TextField();
         §`N§.width = param4;
         §`N§.height = 20;
         §`N§.x = param2;
         §`N§.y = param3;
         §5!2§.addChild(§`N§);
         §3z§ = new TextField();
         §3z§.width = param4;
         §3z§.height = 20;
         §3z§.x = param2;
         §3z§.y = param3 + 20;
         §5!2§.addChild(§3z§);
         §@T§(§<!%§);
         if(param6 >= 0)
         {
            param1.addChildAt(§5!2§,param6);
         }
         else
         {
            param1.addChild(§5!2§);
         }
      }
      
      public static function §@T§(param1:Boolean) : void
      {
         if(!§7C§)
         {
            return;
         }
         §<!%§ = param1;
         §5!2§.mouseChildren = §<!%§;
         §5!2§.mouseEnabled = §<!%§;
         §`N§.mouseEnabled = §<!%§;
         §3z§.mouseEnabled = §<!%§;
         §#]§.mouseEnabled = §<!%§;
         §"!&§.visible = §<!%§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§7C§)
         {
            return;
         }
      }
      
      public static function §1!$§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §#>§ = param1;
         §%%§ = param2;
         §[!A§ = param3;
      }
      
      public static function §'! §(param1:String) : void
      {
         §7f§ = param1;
      }
   }
}
