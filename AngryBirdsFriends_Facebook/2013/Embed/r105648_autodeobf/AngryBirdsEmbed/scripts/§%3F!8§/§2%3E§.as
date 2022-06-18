package §?!8§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §2>§
   {
      
      public static const §0!A§:Boolean = true;
      
      public static const §]^§:Boolean = true;
      
      public static const §]j§:int = 0;
      
      public static const §[§:int = 1;
      
      public static const §!!7§:int = 500;
      
      private static var §#l§:Array = null;
      
      private static var §]J§:Number = 0;
      
      public static var §[e§:int = Keyboard.F1;
      
      public static var §[R§:int = Keyboard.F3;
      
      public static var §#&§:int = Keyboard.F2;
      
      public static var §8c§:int = Keyboard.F4;
      
      public static var §=!5§:Boolean = false;
      
      public static var §+!7§:Sprite = null;
      
      private static var §]5§:TextField = null;
      
      private static var §?!"§:TextField = null;
      
      private static var §7&§:TextField = null;
      
      private static var §?p§:TextField = null;
      
      public static var § j§:int = -1;
      
      public static var §%A§:String = "version: Unknown";
      
      public static var §"2§:String = "";
      
      {
         init();
      }
      
      public function §2>§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§0!A§)
         {
            return;
         }
         §#l§ = new Array(§!!7§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§0!A§)
         {
            _loc3_ = §]J§++ % §!!7§;
            §#l§[_loc3_] = [param1,param2];
            if(param2 == § j§ || § j§ < 0)
            {
               §@1§();
            }
         }
         if(§]^§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §=d§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §@1§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§0!A§)
         {
            return;
         }
         if(§+!7§ && §+!7§.visible)
         {
            if(§ j§ < 0)
            {
               §7&§.text = "Current channel: ALL";
            }
            else
            {
               §7&§.text = "Current channel: " + § j§;
            }
            if(§%A§ != null)
            {
               §?p§.text = §%A§;
            }
            _loc1_ = true;
            if(§]5§.scrollV != §]5§.numLines - int(§]5§.height / (§]5§.textHeight / §]5§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §!!7§)
            {
               _loc4_ = (§]J§ + _loc3_ + 1) % 500;
               if(§#l§[_loc4_] != null)
               {
                  if(§ j§ < 0 || §#l§[_loc4_][1] == § j§)
                  {
                     _loc2_ += §#l§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §]5§.text = _loc2_;
            if(_loc1_)
            {
               §]5§.scrollV = §]5§.numLines;
            }
         }
      }
      
      public static function §%i§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§0!A§)
         {
            return;
         }
         §+!7§ = new Sprite();
         §+!7§.visible = false;
         param1.addChild(§+!7§);
         var _loc7_:Graphics;
         (_loc7_ = §+!7§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §]5§ = new TextField();
         §]5§.width = param4;
         §]5§.height = param5 - 40;
         §]5§.x = param2;
         §]5§.y = param3 + 40;
         §]5§.wordWrap = true;
         §+!7§.addChild(§]5§);
         §?!"§ = new TextField();
         §?!"§.x = param2 + param4 / 2;
         §?!"§.y = param3;
         §?!"§.width = param4 / 2;
         §?!"§.height = 20;
         §?!"§.text = "LOGGER CAPTURING INPUT, F4";
         §?!"§.border = true;
         §?!"§.borderColor = 16711680;
         §+!7§.addChild(§?!"§);
         §7&§ = new TextField();
         §7&§.width = param4;
         §7&§.height = 20;
         §7&§.x = param2;
         §7&§.y = param3;
         §+!7§.addChild(§7&§);
         §?p§ = new TextField();
         §?p§.width = param4;
         §?p§.height = 20;
         §?p§.x = param2;
         §?p§.y = param3 + 20;
         §+!7§.addChild(§?p§);
         §3X§(§=!5§);
         if(param6 >= 0)
         {
            param1.addChildAt(§+!7§,param6);
         }
         else
         {
            param1.addChild(§+!7§);
         }
      }
      
      public static function §3X§(param1:Boolean) : void
      {
         if(!§0!A§)
         {
            return;
         }
         §=!5§ = param1;
         §+!7§.mouseChildren = §=!5§;
         §+!7§.mouseEnabled = §=!5§;
         §7&§.mouseEnabled = §=!5§;
         §?p§.mouseEnabled = §=!5§;
         §]5§.mouseEnabled = §=!5§;
         §?!"§.visible = §=!5§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§0!A§)
         {
            return;
         }
      }
      
      public static function §]'§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §[e§ = param1;
         §#&§ = param2;
         §[R§ = param3;
      }
      
      public static function §>]§(param1:String) : void
      {
         §%A§ = param1;
      }
   }
}
