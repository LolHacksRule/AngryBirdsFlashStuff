package §@!;§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §&F§
   {
      
      public static const §=0§:Boolean = true;
      
      public static const §try §:Boolean = true;
      
      public static const § b§:int = 0;
      
      public static const §?!4§:int = 1;
      
      public static const §9!+§:int = 500;
      
      private static var §3,§:Array = null;
      
      private static var §<z§:Number = 0;
      
      public static var §1!L§:int = Keyboard.F1;
      
      public static var §case §:int = Keyboard.F3;
      
      public static var § "7§:int = Keyboard.F2;
      
      public static var §3]§:int = Keyboard.F4;
      
      public static var §2=§:Boolean = false;
      
      public static var §^N§:Sprite = null;
      
      private static var §25§:TextField = null;
      
      private static var § q§:TextField = null;
      
      private static var §throw§:TextField = null;
      
      private static var §=!&§:TextField = null;
      
      public static var §+v§:int = -1;
      
      public static var §&"%§:String = "version: Unknown";
      
      public static var §>!Q§:String = "";
      
      {
         init();
      }
      
      public function §&F§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§=0§)
         {
            return;
         }
         §3,§ = new Array(§9!+§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§=0§)
         {
            _loc3_ = §<z§++ % §9!+§;
            §3,§[_loc3_] = [param1,param2];
            if(param2 == §+v§ || §+v§ < 0)
            {
               §6;§();
            }
         }
         if(§try §)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §9!g§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §6;§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§=0§)
         {
            return;
         }
         if(§^N§ && §^N§.visible)
         {
            if(§+v§ < 0)
            {
               §throw§.text = "Current channel: ALL";
            }
            else
            {
               §throw§.text = "Current channel: " + §+v§;
            }
            if(§&"%§ != null)
            {
               §=!&§.text = §&"%§;
            }
            _loc1_ = true;
            if(§25§.scrollV != §25§.numLines - int(§25§.height / (§25§.textHeight / §25§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §9!+§)
            {
               _loc4_ = (§<z§ + _loc3_ + 1) % 500;
               if(§3,§[_loc4_] != null)
               {
                  if(§+v§ < 0 || §3,§[_loc4_][1] == §+v§)
                  {
                     _loc2_ += §3,§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §25§.text = _loc2_;
            if(_loc1_)
            {
               §25§.scrollV = §25§.numLines;
            }
         }
      }
      
      public static function §4J§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§=0§)
         {
            return;
         }
         §^N§ = new Sprite();
         §^N§.visible = false;
         param1.addChild(§^N§);
         var _loc7_:Graphics;
         (_loc7_ = §^N§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §25§ = new TextField();
         §25§.width = param4;
         §25§.height = param5 - 40;
         §25§.x = param2;
         §25§.y = param3 + 40;
         §25§.wordWrap = true;
         §^N§.addChild(§25§);
         § q§ = new TextField();
         § q§.x = param2 + param4 / 2;
         § q§.y = param3;
         § q§.width = param4 / 2;
         § q§.height = 20;
         § q§.text = "LOGGER CAPTURING INPUT, F4";
         § q§.border = true;
         § q§.borderColor = 16711680;
         §^N§.addChild(§ q§);
         §throw§ = new TextField();
         §throw§.width = param4;
         §throw§.height = 20;
         §throw§.x = param2;
         §throw§.y = param3;
         §^N§.addChild(§throw§);
         §=!&§ = new TextField();
         §=!&§.width = param4;
         §=!&§.height = 20;
         §=!&§.x = param2;
         §=!&§.y = param3 + 20;
         §^N§.addChild(§=!&§);
         §5!G§(§2=§);
         if(param6 >= 0)
         {
            param1.addChildAt(§^N§,param6);
         }
         else
         {
            param1.addChild(§^N§);
         }
      }
      
      public static function §5!G§(param1:Boolean) : void
      {
         if(!§=0§)
         {
            return;
         }
         §2=§ = param1;
         §^N§.mouseChildren = §2=§;
         §^N§.mouseEnabled = §2=§;
         §throw§.mouseEnabled = §2=§;
         §=!&§.mouseEnabled = §2=§;
         §25§.mouseEnabled = §2=§;
         § q§.visible = §2=§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§=0§)
         {
            return;
         }
      }
      
      public static function §4!u§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §1!L§ = param1;
         § "7§ = param2;
         §case § = param3;
      }
      
      public static function §%!&§(param1:String) : void
      {
         §&"%§ = param1;
      }
   }
}
