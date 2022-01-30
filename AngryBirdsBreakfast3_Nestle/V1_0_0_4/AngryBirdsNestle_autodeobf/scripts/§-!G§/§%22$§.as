package §-!G§
{
   import §;t§.§1C§;
   
   public class §"$§ extends §1C§
   {
       
      
      private var §,!,§:String;
      
      private var §+!i§:String;
      
      private var §?u§:Vector.<int>;
      
      public function §"$§()
      {
         super();
         this.§?u§ = new Vector.<int>();
      }
      
      public function get language() : String
      {
         return this.§,!,§;
      }
      
      public function set language(param1:String) : void
      {
         this.§,!,§ = param1;
      }
      
      public function get country() : String
      {
         return this.§+!i§;
      }
      
      public function set country(param1:String) : void
      {
         this.§+!i§ = param1;
      }
      
      public function §^"$§(param1:int) : void
      {
         if(this.§?u§.indexOf(param1) == -1)
         {
            this.§?u§.push(param1);
         }
      }
      
      public function § Q§() : Vector.<int>
      {
         var _loc2_:int = 0;
         var _loc1_:Vector.<int> = new Vector.<int>();
         for each(_loc2_ in this.§?u§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function §5s§() : void
      {
         this.§?u§ = new Vector.<int>();
      }
   }
}
