package §63§
{
   import §%!h§.§5G§;
   
   public class §%!8§ extends §5G§
   {
       
      
      private var §8!8§:String;
      
      private var §8"+§:String;
      
      private var §"!X§:Vector.<int>;
      
      public function §%!8§()
      {
         super();
         this.§"!X§ = new Vector.<int>();
      }
      
      public function get language() : String
      {
         return this.§8!8§;
      }
      
      public function set language(param1:String) : void
      {
         this.§8!8§ = param1;
      }
      
      public function get country() : String
      {
         return this.§8"+§;
      }
      
      public function set country(param1:String) : void
      {
         this.§8"+§ = param1;
      }
      
      public function §?!n§(param1:int) : void
      {
         if(this.§"!X§.indexOf(param1) == -1)
         {
            this.§"!X§.push(param1);
         }
      }
      
      public function §5X§() : Vector.<int>
      {
         var _loc2_:int = 0;
         var _loc1_:Vector.<int> = new Vector.<int>();
         for each(_loc2_ in this.§"!X§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function §"9§() : void
      {
         this.§"!X§ = new Vector.<int>();
      }
   }
}
