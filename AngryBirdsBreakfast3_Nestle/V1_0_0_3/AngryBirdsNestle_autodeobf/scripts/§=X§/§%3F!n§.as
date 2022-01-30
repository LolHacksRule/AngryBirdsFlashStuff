package §=X§
{
   public class §?!n§ extends §<X§
   {
       
      
      private var §8T§:String;
      
      private var §0]§:String;
      
      private var § for§:Vector.<int>;
      
      public function §?!n§()
      {
         super();
         this.§ for§ = new Vector.<int>();
      }
      
      public function get language() : String
      {
         return this.§8T§;
      }
      
      public function set language(param1:String) : void
      {
         this.§8T§ = param1;
      }
      
      public function get country() : String
      {
         return this.§0]§;
      }
      
      public function set country(param1:String) : void
      {
         this.§0]§ = param1;
      }
      
      public function §0E§(param1:int) : void
      {
         if(this.§ for§.indexOf(param1) == -1)
         {
            this.§ for§.push(param1);
         }
      }
      
      public function §7!>§() : Vector.<int>
      {
         var _loc2_:int = 0;
         var _loc1_:Vector.<int> = new Vector.<int>();
         for each(_loc2_ in this.§ for§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function §9!j§() : void
      {
         this.§ for§ = new Vector.<int>();
      }
   }
}
