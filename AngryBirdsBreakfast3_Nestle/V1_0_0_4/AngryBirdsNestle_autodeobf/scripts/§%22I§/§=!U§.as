package §"I§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §=!U§
   {
      
      public static const §5!3§:Boolean = true;
      
      public static const §6!3§:Boolean = true;
      
      public static const §[!X§:int = 0;
      
      public static const §5n§:int = 1;
      
      public static const §`!X§:int = 500;
      
      private static var §2!#§:Array = null;
      
      private static var §2Y§:Number = 0;
      
      public static var §;h§:int = Keyboard.F1;
      
      public static var §[S§:int = Keyboard.F3;
      
      public static var §1Z§:int = Keyboard.F2;
      
      public static var § !x§:int = Keyboard.F4;
      
      public static var §`^§:Boolean = false;
      
      public static var §2"%§:Sprite = null;
      
      private static var §3D§:TextField = null;
      
      private static var §]T§:TextField = null;
      
      private static var §!n§:TextField = null;
      
      private static var §]!p§:TextField = null;
      
      public static var §!!K§:int = -1;
      
      public static var §>!+§:String = "version: Unknown";
      
      public static var §1!k§:String = "";
      
      {
         init();
      }
      
      public function §=!U§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§5!3§)
         {
            return;
         }
         §2!#§ = new Array(§`!X§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§5!3§)
         {
            _loc3_ = §2Y§++ % §`!X§;
            §2!#§[_loc3_] = [param1,param2];
            if(param2 == §!!K§ || §!!K§ < 0)
            {
               §?F§();
            }
         }
         if(§6!3§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §'!T§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §?F§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§5!3§)
         {
            return;
         }
         if(§2"%§ && §2"%§.visible)
         {
            if(§!!K§ < 0)
            {
               §!n§.text = "Current channel: ALL";
            }
            else
            {
               §!n§.text = "Current channel: " + §!!K§;
            }
            if(§>!+§ != null)
            {
               §]!p§.text = §>!+§;
            }
            _loc1_ = true;
            if(§3D§.scrollV != §3D§.numLines - int(§3D§.height / (§3D§.textHeight / §3D§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §`!X§)
            {
               _loc4_ = (§2Y§ + _loc3_ + 1) % 500;
               if(§2!#§[_loc4_] != null)
               {
                  if(§!!K§ < 0 || §2!#§[_loc4_][1] == §!!K§)
                  {
                     _loc2_ += §2!#§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §3D§.text = _loc2_;
            if(_loc1_)
            {
               §3D§.scrollV = §3D§.numLines;
            }
         }
      }
      
      public static function §8!l§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§5!3§)
         {
            return;
         }
         §2"%§ = new Sprite();
         §2"%§.visible = false;
         param1.addChild(§2"%§);
         var _loc7_:Graphics;
         (_loc7_ = §2"%§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §3D§ = new TextField();
         §3D§.width = param4;
         §3D§.height = param5 - 40;
         §3D§.x = param2;
         §3D§.y = param3 + 40;
         §3D§.wordWrap = true;
         §2"%§.addChild(§3D§);
         §]T§ = new TextField();
         §]T§.x = param2 + param4 / 2;
         §]T§.y = param3;
         §]T§.width = param4 / 2;
         §]T§.height = 20;
         §]T§.text = "LOGGER CAPTURING INPUT, F4";
         §]T§.border = true;
         §]T§.borderColor = 16711680;
         §2"%§.addChild(§]T§);
         §!n§ = new TextField();
         §!n§.width = param4;
         §!n§.height = 20;
         §!n§.x = param2;
         §!n§.y = param3;
         §2"%§.addChild(§!n§);
         §]!p§ = new TextField();
         §]!p§.width = param4;
         §]!p§.height = 20;
         §]!p§.x = param2;
         §]!p§.y = param3 + 20;
         §2"%§.addChild(§]!p§);
         §;n§(§`^§);
         if(param6 >= 0)
         {
            param1.addChildAt(§2"%§,param6);
         }
         else
         {
            param1.addChild(§2"%§);
         }
      }
      
      public static function §;n§(param1:Boolean) : void
      {
         if(!§5!3§)
         {
            return;
         }
         §`^§ = param1;
         §2"%§.mouseChildren = §`^§;
         §2"%§.mouseEnabled = §`^§;
         §!n§.mouseEnabled = §`^§;
         §]!p§.mouseEnabled = §`^§;
         §3D§.mouseEnabled = §`^§;
         §]T§.visible = §`^§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§5!3§)
         {
            return;
         }
      }
      
      public static function §@"-§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §;h§ = param1;
         §1Z§ = param2;
         §[S§ = param3;
      }
      
      public static function §=!<§(param1:String) : void
      {
         §>!+§ = param1;
      }
   }
}
