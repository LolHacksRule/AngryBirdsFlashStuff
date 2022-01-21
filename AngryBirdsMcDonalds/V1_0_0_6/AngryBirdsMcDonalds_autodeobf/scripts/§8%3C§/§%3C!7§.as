package §8<§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §<!7§
   {
      
      public static const §"!Q§:Boolean = true;
      
      public static const §`T§:Boolean = true;
      
      public static const §-!§:int = 0;
      
      public static const §@Z§:int = 1;
      
      public static const §4"§:int = 500;
      
      private static var §]P§:Array = null;
      
      private static var §1]§:Number = 0;
      
      public static var §8R§:int = Keyboard.F1;
      
      public static var §=k§:int = Keyboard.F3;
      
      public static var §[>§:int = Keyboard.F2;
      
      public static var §<y§:int = Keyboard.F4;
      
      public static var §5!S§:Boolean = false;
      
      public static var §"r§:Sprite = null;
      
      private static var §,b§:TextField = null;
      
      private static var §2!g§:TextField = null;
      
      private static var §29§:TextField = null;
      
      private static var §,a§:TextField = null;
      
      public static var §'!^§:int = -1;
      
      public static var §0H§:String = "version: Unknown";
      
      public static var §5!R§:String = "";
      
      {
         init();
      }
      
      public function §<!7§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§"!Q§)
         {
            return;
         }
         §]P§ = new Array(§4"§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§"!Q§)
         {
            _loc3_ = §1]§++ % §4"§;
            §]P§[_loc3_] = [param1,param2];
            if(param2 == §'!^§ || §'!^§ < 0)
            {
               §#p§();
            }
         }
         if(§`T§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §^!0§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §#p§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§"!Q§)
         {
            return;
         }
         if(§"r§ && §"r§.visible)
         {
            if(§'!^§ < 0)
            {
               §29§.text = "Current channel: ALL";
            }
            else
            {
               §29§.text = "Current channel: " + §'!^§;
            }
            if(§0H§ != null)
            {
               §,a§.text = §0H§;
            }
            _loc1_ = true;
            if(§,b§.scrollV != §,b§.numLines - int(§,b§.height / (§,b§.textHeight / §,b§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §4"§)
            {
               _loc4_ = (§1]§ + _loc3_ + 1) % 500;
               if(§]P§[_loc4_] != null)
               {
                  if(§'!^§ < 0 || §]P§[_loc4_][1] == §'!^§)
                  {
                     _loc2_ += §]P§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §,b§.text = _loc2_;
            if(_loc1_)
            {
               §,b§.scrollV = §,b§.numLines;
            }
         }
      }
      
      public static function §5!@§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§"!Q§)
         {
            return;
         }
         §"r§ = new Sprite();
         §"r§.visible = false;
         param1.addChild(§"r§);
         var _loc7_:Graphics;
         (_loc7_ = §"r§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §,b§ = new TextField();
         §,b§.width = param4;
         §,b§.height = param5 - 40;
         §,b§.x = param2;
         §,b§.y = param3 + 40;
         §,b§.wordWrap = true;
         §"r§.addChild(§,b§);
         §2!g§ = new TextField();
         §2!g§.x = param2 + param4 / 2;
         §2!g§.y = param3;
         §2!g§.width = param4 / 2;
         §2!g§.height = 20;
         §2!g§.text = "LOGGER CAPTURING INPUT, F4";
         §2!g§.border = true;
         §2!g§.borderColor = 16711680;
         §"r§.addChild(§2!g§);
         §29§ = new TextField();
         §29§.width = param4;
         §29§.height = 20;
         §29§.x = param2;
         §29§.y = param3;
         §"r§.addChild(§29§);
         §,a§ = new TextField();
         §,a§.width = param4;
         §,a§.height = 20;
         §,a§.x = param2;
         §,a§.y = param3 + 20;
         §"r§.addChild(§,a§);
         §68§(§5!S§);
         if(param6 >= 0)
         {
            param1.addChildAt(§"r§,param6);
         }
         else
         {
            param1.addChild(§"r§);
         }
      }
      
      public static function §68§(param1:Boolean) : void
      {
         if(!§"!Q§)
         {
            return;
         }
         §5!S§ = param1;
         §"r§.mouseChildren = §5!S§;
         §"r§.mouseEnabled = §5!S§;
         §29§.mouseEnabled = §5!S§;
         §,a§.mouseEnabled = §5!S§;
         §,b§.mouseEnabled = §5!S§;
         §2!g§.visible = §5!S§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§"!Q§)
         {
            return;
         }
      }
      
      public static function §5b§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §8R§ = param1;
         §[>§ = param2;
         §=k§ = param3;
      }
      
      public static function §6!g§(param1:String) : void
      {
         §0H§ = param1;
      }
   }
}
