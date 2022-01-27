package §?"-§
{
   import §'"I§.§1-§;
   import §'"I§.§5"0§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §`"%§ extends §5"0§
   {
       
      
      private var §2!I§:String;
      
      private var §7"s§:Boolean;
      
      public function §`"%§(param1:Vector.<MovieClip>, param2:Stage, param3:Number = 41.666666666666664, param4:Boolean = false)
      {
         this.§7"s§ = param4;
         super(param1,param2,param3);
      }
      
      public function §4!N§(param1:String) : void
      {
         this.§2!I§ = param1;
      }
      
      override protected function startAnimation(param1:MovieClip) : void
      {
         var _loc2_:String = null;
         if(this.isBackground(param1.name) && !(§+?§.type == §1-§.§?j§ && this.§7"s§))
         {
            _loc2_ = §+?§.startLabel + "_" + this.§2!I§;
            if(§2!,§(param1,_loc2_))
            {
               param1.gotoAndStop(_loc2_);
               §"!s§.push(param1);
            }
            else if(§2!,§(param1,§+?§.defaultStartLabel))
            {
               param1.gotoAndStop(§+?§.defaultStartLabel);
               §"!s§.push(param1);
            }
         }
         else
         {
            super.startAnimation(param1);
         }
      }
      
      protected function isBackground(param1:String) : Boolean
      {
         return param1 == "MovieClip_Background";
      }
      
      override protected function runAnimation(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc2_:MovieClip = §"!s§[param1];
         if(!this.isBackground(_loc2_.name) || §+?§.type == §1-§.§?j§ && this.§7"s§)
         {
            super.runAnimation(param1);
            return;
         }
         if(§'Q§ && !§[!Q§)
         {
            _loc3_ = true;
         }
         else
         {
            _loc3_ = §="m§(_loc2_,§'Q§);
         }
         if(_loc3_)
         {
            if(_loc4_ = §+?§.loop && !§'Q§)
            {
               _loc5_ = §+?§.defaultStartLabel != "" ? §+?§.defaultStartLabel : "";
               _loc6_ = (_loc6_ = §+?§.startLabel != "" ? §+?§.startLabel : _loc5_) + ("_" + this.§2!I§);
               if(!§2!,§(_loc2_,_loc6_))
               {
                  _loc6_ = _loc5_;
               }
               if(_loc6_ != "")
               {
                  _loc2_.gotoAndStop(_loc6_);
               }
               else
               {
                  _loc2_.gotoAndStop(1);
               }
            }
            else
            {
               §"!s§.splice(param1,1);
               ++§#U§;
            }
         }
         else
         {
            _loc2_.nextFrame();
         }
      }
   }
}
