package §^_§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §!>§
   {
      
      public static const §&u§:Boolean = true;
      
      public static const §7T§:Boolean = true;
      
      public static const §2=§:int = 0;
      
      public static const §0!=§:int = 1;
      
      public static const §<!%§:int = 500;
      
      private static var §'r§:Array = null;
      
      private static var §3n§:Number = 0;
      
      public static var §7W§:int = Keyboard.F1;
      
      public static var §"@§:int = Keyboard.F3;
      
      public static var §#G§:int = Keyboard.F2;
      
      public static var §,+§:int = Keyboard.F4;
      
      public static var §6!2§:Boolean = false;
      
      public static var § !w§:Sprite = null;
      
      private static var § x§:TextField = null;
      
      private static var §]o§:TextField = null;
      
      private static var §9!G§:TextField = null;
      
      private static var §#,§:TextField = null;
      
      public static var §1!I§:int = -1;
      
      public static var §<4§:String = "version: Unknown";
      
      public static var §`p§:String = "";
      
      {
         init();
      }
      
      public function §!>§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§&u§)
         {
            return;
         }
         §'r§ = new Array(§<!%§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§&u§)
         {
            _loc3_ = §3n§++ % §<!%§;
            §'r§[_loc3_] = [param1,param2];
            if(param2 == §1!I§ || §1!I§ < 0)
            {
               §@!b§();
            }
         }
         if(§7T§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §5!B§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §@!b§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§&u§)
         {
            return;
         }
         if(§ !w§ && § !w§.visible)
         {
            if(§1!I§ < 0)
            {
               §9!G§.text = "Current channel: ALL";
            }
            else
            {
               §9!G§.text = "Current channel: " + §1!I§;
            }
            if(§<4§ != null)
            {
               §#,§.text = §<4§;
            }
            _loc1_ = true;
            if(§ x§.scrollV != § x§.numLines - int(§ x§.height / (§ x§.textHeight / § x§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §<!%§)
            {
               _loc4_ = (§3n§ + _loc3_ + 1) % 500;
               if(§'r§[_loc4_] != null)
               {
                  if(§1!I§ < 0 || §'r§[_loc4_][1] == §1!I§)
                  {
                     _loc2_ += §'r§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            § x§.text = _loc2_;
            if(_loc1_)
            {
               § x§.scrollV = § x§.numLines;
            }
         }
      }
      
      public static function §?!S§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§&u§)
         {
            return;
         }
         § !w§ = new Sprite();
         § !w§.visible = false;
         param1.addChild(§ !w§);
         var _loc7_:Graphics;
         (_loc7_ = § !w§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         § x§ = new TextField();
         § x§.width = param4;
         § x§.height = param5 - 40;
         § x§.x = param2;
         § x§.y = param3 + 40;
         § x§.wordWrap = true;
         § !w§.addChild(§ x§);
         §]o§ = new TextField();
         §]o§.x = param2 + param4 / 2;
         §]o§.y = param3;
         §]o§.width = param4 / 2;
         §]o§.height = 20;
         §]o§.text = "LOGGER CAPTURING INPUT, F4";
         §]o§.border = true;
         §]o§.borderColor = 16711680;
         § !w§.addChild(§]o§);
         §9!G§ = new TextField();
         §9!G§.width = param4;
         §9!G§.height = 20;
         §9!G§.x = param2;
         §9!G§.y = param3;
         § !w§.addChild(§9!G§);
         §#,§ = new TextField();
         §#,§.width = param4;
         §#,§.height = 20;
         §#,§.x = param2;
         §#,§.y = param3 + 20;
         § !w§.addChild(§#,§);
         §#!X§(§6!2§);
         if(param6 >= 0)
         {
            param1.addChildAt(§ !w§,param6);
         }
         else
         {
            param1.addChild(§ !w§);
         }
      }
      
      public static function §#!X§(param1:Boolean) : void
      {
         if(!§&u§)
         {
            return;
         }
         §6!2§ = param1;
         § !w§.mouseChildren = §6!2§;
         § !w§.mouseEnabled = §6!2§;
         §9!G§.mouseEnabled = §6!2§;
         §#,§.mouseEnabled = §6!2§;
         § x§.mouseEnabled = §6!2§;
         §]o§.visible = §6!2§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§&u§)
         {
            return;
         }
      }
      
      public static function §5r§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §7W§ = param1;
         §#G§ = param2;
         §"@§ = param3;
      }
      
      public static function §,!P§(param1:String) : void
      {
         §<4§ = param1;
      }
   }
}
