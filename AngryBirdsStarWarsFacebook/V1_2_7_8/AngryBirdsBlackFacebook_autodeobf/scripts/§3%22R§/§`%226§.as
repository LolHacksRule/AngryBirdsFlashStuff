package §3"R§
{
   import §7!@§.§""s§;
   import §7!@§.§6"§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §`"6§ extends §""s§
   {
       
      
      private var §="b§:String;
      
      private var §'k§:Boolean;
      
      public function §`"6§(param1:Vector.<MovieClip>, param2:Stage, param3:Number = 41.666666666666664, param4:Boolean = false)
      {
         this.§'k§ = param4;
         super(param1,param2,param3);
      }
      
      public function §5P§(param1:String) : void
      {
         this.§="b§ = param1;
      }
      
      override protected function startAnimation(param1:MovieClip) : void
      {
         var _loc2_:String = null;
         if(this.isBackground(param1.name) && !(§>!8§.type == §6"§.§,#2§ && this.§'k§))
         {
            _loc2_ = §>!8§.startLabel + "_" + this.§="b§;
            if(§^">§(param1,_loc2_))
            {
               param1.gotoAndStop(_loc2_);
               § !,§.push(param1);
            }
            else if(§^">§(param1,§>!8§.defaultStartLabel))
            {
               param1.gotoAndStop(§>!8§.defaultStartLabel);
               § !,§.push(param1);
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
         var _loc2_:MovieClip = § !,§[param1];
         if(!this.isBackground(_loc2_.name) || §>!8§.type == §6"§.§,#2§ && this.§'k§)
         {
            super.runAnimation(param1);
            return;
         }
         if(§,!T§ && !§"!x§)
         {
            _loc3_ = true;
         }
         else
         {
            _loc3_ = §<#,§(_loc2_,§,!T§);
         }
         if(_loc3_)
         {
            if(_loc4_ = §>!8§.loop && !§,!T§)
            {
               _loc5_ = §>!8§.defaultStartLabel != "" ? §>!8§.defaultStartLabel : "";
               _loc6_ = (_loc6_ = §>!8§.startLabel != "" ? §>!8§.startLabel : _loc5_) + ("_" + this.§="b§);
               if(!§^">§(_loc2_,_loc6_))
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
               § !,§.splice(param1,1);
               ++§`]§;
            }
         }
         else
         {
            _loc2_.nextFrame();
         }
      }
   }
}
