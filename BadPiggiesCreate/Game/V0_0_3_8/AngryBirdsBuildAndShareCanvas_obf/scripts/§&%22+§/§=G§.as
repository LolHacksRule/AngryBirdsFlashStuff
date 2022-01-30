package §&"+§
{
   public class §=G§
   {
       
      
      protected var §&!!§:int;
      
      protected var §^!c§:int;
      
      protected var §"!G§:Number = 0;
      
      protected var §<!J§:Number;
      
      protected var §,s§:Boolean = false;
      
      public function §=G§(param1:int, param2:int, param3:Number)
      {
         super();
         this.§&!!§ = param1;
         this.§^!c§ = param2;
         this.§<!J§ = Math.floor(param3 * 1000);
      }
      
      public function get §[!v§() : int
      {
         return this.§&!!§;
      }
      
      public function set §[!v§(param1:int) : void
      {
         this.§&!!§ = param1;
      }
      
      public function get targetId() : int
      {
         return this.§^!c§;
      }
      
      public function get §#!P§() : Boolean
      {
         return this.§,s§;
      }
      
      public function set §#!P§(param1:Boolean) : void
      {
         this.§,s§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§"!G§ += param1;
         if(this.§"!G§ >= this.§<!J§)
         {
            return this.§^!c§;
         }
         return -1;
      }
   }
}
