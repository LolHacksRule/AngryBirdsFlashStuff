package §0g§
{
   import §!$;§.Event;
   import §!$;§.EventDispatcher;
   
   public class §]P§ extends EventDispatcher implements §'"P§
   {
       
      
      private var §4$5§:Number;
      
      private var §6!;§:Number;
      
      private var §4!W§:Function;
      
      private var §@" §:Array;
      
      private var §,!M§:int;
      
      public function §]P§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.reset(param1,param2,param3);
      }
      
      public function reset(param1:Function, param2:Number, param3:Array = null) : §]P§
      {
         this.§4$5§ = 0;
         this.§6!;§ = Math.max(param2,0.0001);
         this.§4!W§ = param1;
         this.§@" § = param3;
         this.§,!M§ = 1;
         return this;
      }
      
      public function §-"%§(param1:Number) : void
      {
         var _loc2_:Number = this.§4$5§;
         this.§4$5§ = Math.min(this.§6!;§,this.§4$5§ + param1);
         if(_loc2_ < this.§6!;§ && this.§4$5§ >= this.§6!;§)
         {
            this.§4!W§.apply(null,this.§@" §);
            if(this.§,!M§ == 0 || this.§,!M§ > 1)
            {
               if(this.§,!M§ > 0)
               {
                  this.§,!M§ = this.§,!M§ - 1;
               }
               this.§4$5§ = 0;
               this.§-"%§(_loc2_ + param1 - this.§6!;§);
            }
            else
            {
               §6"#§(Event.§>#R§);
            }
         }
      }
      
      public function get §"$C§() : Boolean
      {
         return this.§,!M§ == 1 && this.§4$5§ >= this.§6!;§;
      }
      
      public function get §!E§() : Number
      {
         return this.§6!;§;
      }
      
      public function get §7"A§() : Number
      {
         return this.§4$5§;
      }
      
      public function get repeatCount() : int
      {
         return this.§,!M§;
      }
      
      public function set repeatCount(param1:int) : void
      {
         this.§,!M§ = param1;
      }
   }
}
