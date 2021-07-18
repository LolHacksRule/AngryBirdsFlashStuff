package § ^§
{
   import §@!a§.§'!b§;
   
   public class §[C§ extends §'!b§
   {
       
      
      private var §-m§:String;
      
      private var §'Q§:String;
      
      private var §-i§:Vector.<int>;
      
      public function §[C§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
            do
            {
               this.§-i§ = new Vector.<int>();
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      public function get language() : String
      {
         return this.§-m§;
      }
      
      public function set language(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§-m§ = param1;
         }
      }
      
      public function get §>M§() : String
      {
         return this.§'Q§;
      }
      
      public function set §>M§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§'Q§ = param1;
         }
      }
      
      public function §^!+§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§-i§.indexOf(param1) == -1)
            {
               if(!(_loc2_ && _loc2_))
               {
                  this.§-i§.push(param1);
               }
            }
         }
      }
      
      public function §9A§() : Vector.<int>
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:int = 0;
         var _loc1_:Vector.<int> = new Vector.<int>();
         for each(_loc2_ in this.§-i§)
         {
            if(_loc5_)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public function §3D§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§-i§ = new Vector.<int>();
         }
      }
   }
}
