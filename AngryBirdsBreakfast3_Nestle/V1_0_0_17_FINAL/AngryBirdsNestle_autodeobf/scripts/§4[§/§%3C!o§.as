package §4[§
{
   import §3E§.§2Q§;
   
   public class §<!o§ extends §2Q§
   {
       
      
      private var §3!`§:String;
      
      private var §,!l§:String;
      
      private var §`"+§:Vector.<int>;
      
      public function §<!o§()
      {
         super();
         this.§`"+§ = new Vector.<int>();
      }
      
      public function get language() : String
      {
         return this.§3!`§;
      }
      
      public function set language(param1:String) : void
      {
         this.§3!`§ = param1;
      }
      
      public function get country() : String
      {
         return this.§,!l§;
      }
      
      public function set country(param1:String) : void
      {
         this.§,!l§ = param1;
      }
      
      public function §switch§(param1:int) : void
      {
         if(this.§`"+§.indexOf(param1) == -1)
         {
            this.§`"+§.push(param1);
         }
      }
      
      public function §+[§() : Vector.<int>
      {
         var _loc2_:int = 0;
         var _loc1_:Vector.<int> = new Vector.<int>();
         for each(_loc2_ in this.§`"+§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function §8!J§() : void
      {
         this.§`"+§ = new Vector.<int>();
      }
   }
}
