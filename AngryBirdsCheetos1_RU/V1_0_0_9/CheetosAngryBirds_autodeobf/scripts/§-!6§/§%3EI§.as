package §-!6§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §>I§
   {
      
      public static const §"h§:Boolean = true;
      
      public static const §>!Q§:Boolean = true;
      
      public static const §%!"§:int = 0;
      
      public static const §@!W§:int = 1;
      
      public static const §1b§:int = 500;
      
      private static var §0j§:Array = null;
      
      private static var §-k§:Number = 0;
      
      public static var §&!#§:int = Keyboard.F1;
      
      public static var §5c§:int = Keyboard.F3;
      
      public static var §4A§:int = Keyboard.F2;
      
      public static var § !?§:int = Keyboard.F4;
      
      public static var §`!6§:Boolean = false;
      
      public static var §^O§:Sprite = null;
      
      private static var §=v§:TextField = null;
      
      private static var §4!#§:TextField = null;
      
      private static var §?I§:TextField = null;
      
      private static var §-!,§:TextField = null;
      
      public static var §]!!§:int = -1;
      
      public static var §5!-§:String = "version: Unknown";
      
      public static var §;!A§:String = "";
      
      {
         init();
      }
      
      public function §>I§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§"h§)
         {
            return;
         }
         §0j§ = new Array(§1b§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§"h§)
         {
            _loc3_ = §-k§++ % §1b§;
            §0j§[_loc3_] = [param1,param2];
            if(param2 == §]!!§ || §]!!§ < 0)
            {
               §+o§();
            }
         }
         if(§>!Q§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §!!,§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §+o§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§"h§)
         {
            return;
         }
         if(§^O§ && §^O§.visible)
         {
            if(§]!!§ < 0)
            {
               §?I§.text = "Current channel: ALL";
            }
            else
            {
               §?I§.text = "Current channel: " + §]!!§;
            }
            if(§5!-§ != null)
            {
               §-!,§.text = §5!-§;
            }
            _loc1_ = true;
            if(§=v§.scrollV != §=v§.numLines - int(§=v§.height / (§=v§.textHeight / §=v§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §1b§)
            {
               _loc4_ = (§-k§ + _loc3_ + 1) % 500;
               if(§0j§[_loc4_] != null)
               {
                  if(§]!!§ < 0 || §0j§[_loc4_][1] == §]!!§)
                  {
                     _loc2_ += §0j§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §=v§.text = _loc2_;
            if(_loc1_)
            {
               §=v§.scrollV = §=v§.numLines;
            }
         }
      }
      
      public static function §54§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§"h§)
         {
            return;
         }
         §^O§ = new Sprite();
         §^O§.visible = false;
         param1.addChild(§^O§);
         var _loc7_:Graphics;
         (_loc7_ = §^O§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §=v§ = new TextField();
         §=v§.width = param4;
         §=v§.height = param5 - 40;
         §=v§.x = param2;
         §=v§.y = param3 + 40;
         §=v§.wordWrap = true;
         §^O§.addChild(§=v§);
         §4!#§ = new TextField();
         §4!#§.x = param2 + param4 / 2;
         §4!#§.y = param3;
         §4!#§.width = param4 / 2;
         §4!#§.height = 20;
         §4!#§.text = "LOGGER CAPTURING INPUT, F4";
         §4!#§.border = true;
         §4!#§.borderColor = 16711680;
         §^O§.addChild(§4!#§);
         §?I§ = new TextField();
         §?I§.width = param4;
         §?I§.height = 20;
         §?I§.x = param2;
         §?I§.y = param3;
         §^O§.addChild(§?I§);
         §-!,§ = new TextField();
         §-!,§.width = param4;
         §-!,§.height = 20;
         §-!,§.x = param2;
         §-!,§.y = param3 + 20;
         §^O§.addChild(§-!,§);
         §<w§(§`!6§);
         if(param6 >= 0)
         {
            param1.addChildAt(§^O§,param6);
         }
         else
         {
            param1.addChild(§^O§);
         }
      }
      
      public static function §<w§(param1:Boolean) : void
      {
         if(!§"h§)
         {
            return;
         }
         §`!6§ = param1;
         §^O§.mouseChildren = §`!6§;
         §^O§.mouseEnabled = §`!6§;
         §?I§.mouseEnabled = §`!6§;
         §-!,§.mouseEnabled = §`!6§;
         §=v§.mouseEnabled = §`!6§;
         §4!#§.visible = §`!6§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§"h§)
         {
            return;
         }
      }
      
      public static function §>!T§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §&!#§ = param1;
         §4A§ = param2;
         §5c§ = param3;
      }
      
      public static function §>U§(param1:String) : void
      {
         §5!-§ = param1;
      }
   }
}
