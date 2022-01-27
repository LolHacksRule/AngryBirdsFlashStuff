package §'#&§
{
   import §]!$§.§6y§;
   import §]!$§.§`!]§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §3!l§ extends §`!]§
   {
       
      
      private var §#]§:String;
      
      private var §&"?§:Boolean;
      
      public function §3!l§(param1:Vector.<MovieClip>, param2:Stage, param3:Number = 41.666666666666664, param4:Boolean = false)
      {
         this.§&"?§ = param4;
         super(param1,param2,param3);
      }
      
      public function §%'§(param1:String) : void
      {
         this.§#]§ = param1;
      }
      
      override protected function startAnimation(param1:MovieClip) : void
      {
         var _loc2_:String = null;
         if(this.isBackground(param1.name) && !(§7#§.type == §6y§.§>]§ && this.§&"?§))
         {
            _loc2_ = §7#§.startLabel + "_" + this.§#]§;
            if(§<1§(param1,_loc2_))
            {
               param1.gotoAndStop(_loc2_);
               §[I§.push(param1);
            }
            else if(§<1§(param1,§7#§.defaultStartLabel))
            {
               param1.gotoAndStop(§7#§.defaultStartLabel);
               §[I§.push(param1);
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
         var _loc2_:MovieClip = §[I§[param1];
         if(!this.isBackground(_loc2_.name) || §7#§.type == §6y§.§>]§ && this.§&"?§)
         {
            super.runAnimation(param1);
            return;
         }
         if(§5!z§ && !§7a§)
         {
            _loc3_ = true;
         }
         else
         {
            _loc3_ = §0#H§(_loc2_,§5!z§);
         }
         if(_loc3_)
         {
            if(_loc4_ = §7#§.loop && !§5!z§)
            {
               _loc5_ = §7#§.defaultStartLabel != "" ? §7#§.defaultStartLabel : "";
               _loc6_ = (_loc6_ = §7#§.startLabel != "" ? §7#§.startLabel : _loc5_) + ("_" + this.§#]§);
               if(!§<1§(_loc2_,_loc6_))
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
               §[I§.splice(param1,1);
               ++§^Z§;
            }
         }
         else
         {
            _loc2_.nextFrame();
         }
      }
   }
}
