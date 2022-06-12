package §1!@§
{
   import §"!U§.§=#V§;
   import §%$!§.§+3§;
   import §52§.§?!N§;
   import §;!H§.§<!K§;
   import §?§.§>"$§;
   import com.angrybirds.fonts.AngryBirdsFont;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.text.Font;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §&#a§
   {
      
      protected static var §=!3§:Font = new AngryBirdsFont();
       
      
      public function §&#a§()
      {
         super();
      }
      
      public static function §,!T§(param1:MovieClip, param2:String) : Boolean
      {
         var _loc3_:FrameLabel = null;
         for each(_loc3_ in param1.currentLabels)
         {
            if(_loc3_.name == param2)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function set(param1:Number) : Boolean
      {
         var _loc2_:Date = new Date();
         var _loc3_:Number = Math.round(_loc2_.valueOf() / 1000 / 60 / 60 / 24);
         return Number(_loc3_ - param1) < §?!N§.§+#=§;
      }
      
      public static function §[!;§(param1:§=#V§) : void
      {
         if(!param1)
         {
            return;
         }
         if(!§+3§(AngryBirdsBase.singleton.dataModel).§+!=§.§0!f§(param1.id))
         {
            §+3§(AngryBirdsBase.singleton.dataModel).§+!=§.§3h§(§<!K§.§&L§,[param1.id]);
         }
         var _loc2_:int = §+3§(AngryBirdsBase.singleton.dataModel).§!!Z§.indexOf(param1.id);
         if(_loc2_ > -1)
         {
            §+3§(AngryBirdsBase.singleton.dataModel).§!!Z§.splice(_loc2_,1);
         }
         var _loc3_:int = 0;
         while(_loc3_ < param1.§-!6§())
         {
            _loc2_ = §+3§(AngryBirdsBase.singleton.dataModel).§5`§.indexOf(param1.id + param1.getPricePoint(_loc3_).price);
            if(_loc2_ > -1)
            {
               §+3§(AngryBirdsBase.singleton.dataModel).§+!=§.§3h§(§<!K§.§&L§,[param1.id + param1.getPricePoint(_loc3_).price]);
               §+3§(AngryBirdsBase.singleton.dataModel).§5`§.splice(_loc2_,1);
            }
            _loc3_++;
         }
         (§>"$§.§<_§ as §8G§).§^$9§();
      }
      
      public static function §^E§(param1:TextField, param2:String, param3:Number = 0) : void
      {
         var _loc4_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:Number = NaN;
         var _loc9_:String = null;
         param1.text = param2;
         if(!§=!3§.hasGlyphs(param2))
         {
            param1.embedFonts = false;
            param1.setTextFormat(new TextFormat("_sans"));
         }
         else
         {
            param1.embedFonts = true;
            param1.setTextFormat(param1.defaultTextFormat);
         }
         if(param3 > 0)
         {
            if(param1.textWidth > param3)
            {
               _loc4_ = param1.textWidth / param2.length;
               _loc6_ = int(param3 / _loc4_);
               _loc7_ = param2.substring(0,_loc6_) + "...";
               param1.text = _loc7_;
               if((_loc8_ = param1.textWidth) > param3)
               {
                  while(true)
                  {
                     if(_loc8_ > param3 && _loc6_ > 0)
                     {
                        _loc6_--;
                        _loc7_ = param2.substring(0,_loc6_) + "...";
                        param1.text = _loc7_;
                        _loc8_ = param1.textWidth;
                        continue;
                     }
                  }
               }
               else if(param1.textWidth < param3)
               {
                  _loc9_ = _loc7_;
                  while(_loc8_ < param3 && _loc6_ < param2.length)
                  {
                     _loc6_++;
                     _loc7_ = param2.substring(0,_loc6_) + "...";
                     param1.text = _loc7_;
                     if((_loc8_ = param1.textWidth) > param3)
                     {
                        param1.text = _loc9_;
                        break;
                     }
                     _loc9_ = _loc7_;
                  }
               }
            }
         }
      }
      
      public static function §9#V§(param1:Number, param2:Number, param3:Number) : Number
      {
         return Math.max(param2,Math.min(param3,param1));
      }
   }
}
