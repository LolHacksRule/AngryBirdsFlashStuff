package §=g§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §@!L§
   {
      
      public static const §-!2§:Boolean = true;
      
      public static const §2!`§:Boolean = true;
      
      public static const §-%§:int = 0;
      
      public static const §3R§:int = 1;
      
      public static const §]6§:int = 500;
      
      private static var §!!+§:Array = null;
      
      private static var §>j§:Number = 0;
      
      public static var §<b§:int = Keyboard.F1;
      
      public static var §^X§:int = Keyboard.F3;
      
      public static var §7§:int = Keyboard.F2;
      
      public static var §<G§:int = Keyboard.F4;
      
      public static var §+!L§:Boolean = false;
      
      public static var §30§:Sprite = null;
      
      private static var §]4§:TextField = null;
      
      private static var §9p§:TextField = null;
      
      private static var §9c§:TextField = null;
      
      private static var §[k§:TextField = null;
      
      public static var §0!A§:int = -1;
      
      public static var §>!U§:String = "version: Unknown";
      
      public static var §;1§:String = "";
      
      {
         init();
      }
      
      public function §@!L§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§-!2§)
         {
            return;
         }
         §!!+§ = new Array(§]6§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§-!2§)
         {
            _loc3_ = §>j§++ % §]6§;
            §!!+§[_loc3_] = [param1,param2];
            if(param2 == §0!A§ || §0!A§ < 0)
            {
               §+=§();
            }
         }
         if(§2!`§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §[!K§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §+=§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§-!2§)
         {
            return;
         }
         if(§30§ && §30§.visible)
         {
            if(§0!A§ < 0)
            {
               §9c§.text = "Current channel: ALL";
            }
            else
            {
               §9c§.text = "Current channel: " + §0!A§;
            }
            if(§>!U§ != null)
            {
               §[k§.text = §>!U§;
            }
            _loc1_ = true;
            if(§]4§.scrollV != §]4§.numLines - int(§]4§.height / (§]4§.textHeight / §]4§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §]6§)
            {
               _loc4_ = (§>j§ + _loc3_ + 1) % 500;
               if(§!!+§[_loc4_] != null)
               {
                  if(§0!A§ < 0 || §!!+§[_loc4_][1] == §0!A§)
                  {
                     _loc2_ += §!!+§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §]4§.text = _loc2_;
            if(_loc1_)
            {
               §]4§.scrollV = §]4§.numLines;
            }
         }
      }
      
      public static function §9J§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§-!2§)
         {
            return;
         }
         §30§ = new Sprite();
         §30§.visible = false;
         param1.addChild(§30§);
         var _loc7_:Graphics;
         (_loc7_ = §30§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §]4§ = new TextField();
         §]4§.width = param4;
         §]4§.height = param5 - 40;
         §]4§.x = param2;
         §]4§.y = param3 + 40;
         §]4§.wordWrap = true;
         §30§.addChild(§]4§);
         §9p§ = new TextField();
         §9p§.x = param2 + param4 / 2;
         §9p§.y = param3;
         §9p§.width = param4 / 2;
         §9p§.height = 20;
         §9p§.text = "LOGGER CAPTURING INPUT, F4";
         §9p§.border = true;
         §9p§.borderColor = 16711680;
         §30§.addChild(§9p§);
         §9c§ = new TextField();
         §9c§.width = param4;
         §9c§.height = 20;
         §9c§.x = param2;
         §9c§.y = param3;
         §30§.addChild(§9c§);
         §[k§ = new TextField();
         §[k§.width = param4;
         §[k§.height = 20;
         §[k§.x = param2;
         §[k§.y = param3 + 20;
         §30§.addChild(§[k§);
         §1q§(§+!L§);
         if(param6 >= 0)
         {
            param1.addChildAt(§30§,param6);
         }
         else
         {
            param1.addChild(§30§);
         }
      }
      
      public static function §1q§(param1:Boolean) : void
      {
         if(!§-!2§)
         {
            return;
         }
         §+!L§ = param1;
         §30§.mouseChildren = §+!L§;
         §30§.mouseEnabled = §+!L§;
         §9c§.mouseEnabled = §+!L§;
         §[k§.mouseEnabled = §+!L§;
         §]4§.mouseEnabled = §+!L§;
         §9p§.visible = §+!L§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§-!2§)
         {
            return;
         }
      }
      
      public static function §<%§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §<b§ = param1;
         §7§ = param2;
         §^X§ = param3;
      }
      
      public static function §]!_§(param1:String) : void
      {
         §>!U§ = param1;
      }
   }
}
