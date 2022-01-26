package §_-A§
{
   import §_-ab§.§_-q4§;
   
   public class §_-Ve§
   {
      
      public static const §_-5M§:int = 0;
      
      public static const §_-oN§:int = 1;
      
      public static const §_-tE§:int = 2;
       
      
      public var §_-0x§:Array;
      
      public var §_-xm§:int;
      
      public var §_-XG§:int;
      
      public var mName:String;
      
      public var §_-tW§:String;
      
      public function §_-Ve§(param1:int, param2:String)
      {
         super();
         this.§_-XG§ = param1;
         this.mName = param2;
         this.§_-0x§ = new Array();
      }
      
      public function §_-hT§(param1:§_-q4§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§_-0x§[this.§_-0x§.length] = param1;
      }
      
      public function §_-va§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§_-tW§ = param1;
         if(this.§_-XG§ == §_-5M§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§_-0x§.length)
            {
               if((this.§_-0x§[_loc2_] as §_-q4§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§_-0x§[_loc2_] as §_-q4§).setComponentState(§_-YT§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§_-0x§[_loc2_] as §_-q4§).§_-6K§ == §_-YT§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§_-0x§[_loc2_] as §_-q4§).setComponentState(§_-YT§.§_-c7§);
               }
               _loc2_++;
            }
         }
         if(this.§_-XG§ == §_-tE§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§_-0x§.length)
            {
               if((this.§_-0x§[_loc2_] as §_-q4§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§_-0x§[_loc2_] as §_-q4§).§_-6K§ == §_-YT§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§_-0x§[_loc2_] as §_-q4§).setComponentState(§_-YT§.§_-c7§);
                  }
                  else if((this.§_-0x§[_loc2_] as §_-q4§).§_-6K§ == §_-YT§.§_-c7§)
                  {
                     if(this.§_-Nb§().length < this.§_-xm§)
                     {
                        (this.§_-0x§[_loc2_] as §_-q4§).setComponentState(§_-YT§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§_-Nb§().length >= this.§_-xm§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§_-0x§.length)
                  {
                     if((this.§_-0x§[_loc3_] as §_-q4§).§_-6K§ == §_-YT§.§_-c7§)
                     {
                        (this.§_-0x§[_loc3_] as §_-q4§).setComponentState(§_-YT§.§_-39§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§_-0x§.length)
                  {
                     if((this.§_-0x§[_loc3_] as §_-q4§).§_-6K§ == §_-YT§.§_-39§)
                     {
                        (this.§_-0x§[_loc3_] as §_-q4§).setComponentState(§_-YT§.§_-c7§);
                     }
                     _loc3_++;
                  }
               }
               _loc2_++;
            }
         }
      }
      
      public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-0x§.length)
         {
            (this.§_-0x§[_loc2_] as §_-q4§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §_-G2§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-0x§.length)
         {
            (this.§_-0x§[_loc1_] as §_-q4§).setComponentState(§_-YT§.§_-c7§);
            _loc1_++;
         }
      }
      
      public function §_-KA§(param1:Number) : void
      {
         this.§_-xm§ = param1;
         if(param1 == 1)
         {
            this.§_-XG§ = §_-5M§;
         }
         else
         {
            this.§_-XG§ = §_-tE§;
         }
      }
      
      public function §_-PE§(param1:Array) : void
      {
         this.§_-G2§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§_-va§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §_-Nb§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-0x§.length)
         {
            if((this.§_-0x§[_loc2_] as §_-q4§).§_-6K§ == §_-YT§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§_-0x§[_loc2_] as §_-q4§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
