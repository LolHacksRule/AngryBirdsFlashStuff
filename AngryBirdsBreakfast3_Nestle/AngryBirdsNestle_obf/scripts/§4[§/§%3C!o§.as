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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
         do
         {
            this.§`"+§ = new Vector.<int>();
         }
         while(_loc2_);
         
      }
      
      public function get language() : String
      {
         return this.§3!`§;
      }
      
      public function set language(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§3!`§ = param1;
         }
      }
      
      public function get country() : String
      {
         return this.§,!l§;
      }
      
      public function set country(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§,!l§ = param1;
         }
      }
      
      public function §switch§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(this.§`"+§.indexOf(param1) == -1)
            {
               if(!(_loc2_ && param1))
               {
                  addr57:
                  this.§`"+§.push(param1);
               }
            }
            return;
         }
         §§goto(addr57);
      }
      
      public function §+[§() : Vector.<int>
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:int = 0;
         var _loc1_:Vector.<int> = new Vector.<int>();
         for each(_loc2_ in this.§`"+§)
         {
            if(!_loc6_)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public function §8!J§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§`"+§ = new Vector.<int>();
         }
      }
   }
}
