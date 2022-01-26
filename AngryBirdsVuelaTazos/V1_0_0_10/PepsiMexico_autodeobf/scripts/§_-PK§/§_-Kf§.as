package §_-PK§
{
   import §_-E-§.§_-Fy§;
   
   public class §_-Kf§
   {
      
      public static const §extends§:int = 0;
      
      public static const §_-S8§:int = 1;
      
      public static const §_-CM§:int = 2;
       
      
      public var §_-6K§:Array;
      
      public var §_-i7§:int;
      
      public var §_-jG§:int;
      
      public var mName:String;
      
      public var §_-ts§:String;
      
      public function §_-Kf§(param1:int, param2:String)
      {
         super();
         this.§_-jG§ = param1;
         this.mName = param2;
         this.§_-6K§ = new Array();
      }
      
      public function §_-iD§(param1:§_-Fy§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§_-6K§[this.§_-6K§.length] = param1;
      }
      
      public function §_-kB§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§_-ts§ = param1;
         if(this.§_-jG§ == §extends§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§_-6K§.length)
            {
               if((this.§_-6K§[_loc2_] as §_-Fy§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§_-6K§[_loc2_] as §_-Fy§).setComponentState(§_-ds§.§_-IX§);
               }
               else if((this.§_-6K§[_loc2_] as §_-Fy§).§_-3b§ == §_-ds§.§_-IX§)
               {
                  (this.§_-6K§[_loc2_] as §_-Fy§).setComponentState(§_-ds§.§_-Wl§);
               }
               _loc2_++;
            }
         }
         if(this.§_-jG§ == §_-CM§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§_-6K§.length)
            {
               if((this.§_-6K§[_loc2_] as §_-Fy§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§_-6K§[_loc2_] as §_-Fy§).§_-3b§ == §_-ds§.§_-IX§)
                  {
                     (this.§_-6K§[_loc2_] as §_-Fy§).setComponentState(§_-ds§.§_-Wl§);
                  }
                  else if((this.§_-6K§[_loc2_] as §_-Fy§).§_-3b§ == §_-ds§.§_-Wl§)
                  {
                     if(this.§_-YE§().length < this.§_-i7§)
                     {
                        (this.§_-6K§[_loc2_] as §_-Fy§).setComponentState(§_-ds§.§_-IX§);
                     }
                  }
               }
               if(this.§_-YE§().length >= this.§_-i7§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§_-6K§.length)
                  {
                     if((this.§_-6K§[_loc3_] as §_-Fy§).§_-3b§ == §_-ds§.§_-Wl§)
                     {
                        (this.§_-6K§[_loc3_] as §_-Fy§).setComponentState(§_-ds§.§_-Kv§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§_-6K§.length)
                  {
                     if((this.§_-6K§[_loc3_] as §_-Fy§).§_-3b§ == §_-ds§.§_-Kv§)
                     {
                        (this.§_-6K§[_loc3_] as §_-Fy§).setComponentState(§_-ds§.§_-Wl§);
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
         while(_loc2_ < this.§_-6K§.length)
         {
            (this.§_-6K§[_loc2_] as §_-Fy§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §_-0z§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-6K§.length)
         {
            (this.§_-6K§[_loc1_] as §_-Fy§).setComponentState(§_-ds§.§_-Wl§);
            _loc1_++;
         }
      }
      
      public function §_-l-§(param1:Number) : void
      {
         this.§_-i7§ = param1;
         if(param1 == 1)
         {
            this.§_-jG§ = §extends§;
         }
         else
         {
            this.§_-jG§ = §_-CM§;
         }
      }
      
      public function §in§(param1:Array) : void
      {
         this.§_-0z§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§_-kB§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §_-YE§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-6K§.length)
         {
            if((this.§_-6K§[_loc2_] as §_-Fy§).§_-3b§ == §_-ds§.§_-IX§)
            {
               _loc1_.push((this.§_-6K§[_loc2_] as §_-Fy§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
