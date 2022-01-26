package §_-xN§
{
   import §_-TW§.§_-r6§;
   
   public class §_-nT§
   {
      
      public static const §_-I2§:int = 0;
      
      public static const §_-e4§:int = 1;
      
      public static const §_-KB§:int = 2;
       
      
      public var §_-1o§:Array;
      
      public var §_-sq§:int;
      
      public var §_-Qg§:int;
      
      public var mName:String;
      
      public var §_-ns§:String;
      
      public function §_-nT§(param1:int, param2:String)
      {
         super();
         this.§_-Qg§ = param1;
         this.mName = param2;
         this.§_-1o§ = new Array();
      }
      
      public function §_-BF§(param1:§_-r6§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§_-1o§[this.§_-1o§.length] = param1;
      }
      
      public function §_-XK§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§_-ns§ = param1;
         if(this.§_-Qg§ == §_-I2§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§_-1o§.length)
            {
               if((this.§_-1o§[_loc2_] as §_-r6§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§_-1o§[_loc2_] as §_-r6§).setComponentState(§_-WL§.§_-1M§);
               }
               else if((this.§_-1o§[_loc2_] as §_-r6§).§_-9k§ == §_-WL§.§_-1M§)
               {
                  (this.§_-1o§[_loc2_] as §_-r6§).setComponentState(§_-WL§.§_-t0§);
               }
               _loc2_++;
            }
         }
         if(this.§_-Qg§ == §_-KB§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§_-1o§.length)
            {
               if((this.§_-1o§[_loc2_] as §_-r6§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§_-1o§[_loc2_] as §_-r6§).§_-9k§ == §_-WL§.§_-1M§)
                  {
                     (this.§_-1o§[_loc2_] as §_-r6§).setComponentState(§_-WL§.§_-t0§);
                  }
                  else if((this.§_-1o§[_loc2_] as §_-r6§).§_-9k§ == §_-WL§.§_-t0§)
                  {
                     if(this.§_-9D§().length < this.§_-sq§)
                     {
                        (this.§_-1o§[_loc2_] as §_-r6§).setComponentState(§_-WL§.§_-1M§);
                     }
                  }
               }
               if(this.§_-9D§().length >= this.§_-sq§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§_-1o§.length)
                  {
                     if((this.§_-1o§[_loc3_] as §_-r6§).§_-9k§ == §_-WL§.§_-t0§)
                     {
                        (this.§_-1o§[_loc3_] as §_-r6§).setComponentState(§_-WL§.§_-Jv§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§_-1o§.length)
                  {
                     if((this.§_-1o§[_loc3_] as §_-r6§).§_-9k§ == §_-WL§.§_-Jv§)
                     {
                        (this.§_-1o§[_loc3_] as §_-r6§).setComponentState(§_-WL§.§_-t0§);
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
         while(_loc2_ < this.§_-1o§.length)
         {
            (this.§_-1o§[_loc2_] as §_-r6§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §_-Fe§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-1o§.length)
         {
            (this.§_-1o§[_loc1_] as §_-r6§).setComponentState(§_-WL§.§_-t0§);
            _loc1_++;
         }
      }
      
      public function §_-Tb§(param1:Number) : void
      {
         this.§_-sq§ = param1;
         if(param1 == 1)
         {
            this.§_-Qg§ = §_-I2§;
         }
         else
         {
            this.§_-Qg§ = §_-KB§;
         }
      }
      
      public function §for §(param1:Array) : void
      {
         this.§_-Fe§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§_-XK§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §_-9D§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-1o§.length)
         {
            if((this.§_-1o§[_loc2_] as §_-r6§).§_-9k§ == §_-WL§.§_-1M§)
            {
               _loc1_.push((this.§_-1o§[_loc2_] as §_-r6§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
