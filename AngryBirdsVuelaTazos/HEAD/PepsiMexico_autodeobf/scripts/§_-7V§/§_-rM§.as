package §_-7V§
{
   import §_-Ll§.§_-FU§;
   
   public class §_-rM§
   {
      
      public static const §_-qV§:int = 0;
      
      public static const §_-fc§:int = 1;
      
      public static const §_-c4§:int = 2;
       
      
      public var §_-Kf§:Array;
      
      public var §_-M9§:int;
      
      public var §_-mW§:int;
      
      public var mName:String;
      
      public var §true§:String;
      
      public function §_-rM§(param1:int, param2:String)
      {
         super();
         this.§_-mW§ = param1;
         this.mName = param2;
         this.§_-Kf§ = new Array();
      }
      
      public function §_-zi§(param1:§_-FU§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§_-Kf§[this.§_-Kf§.length] = param1;
      }
      
      public function §_-kG§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§true§ = param1;
         if(this.§_-mW§ == §_-qV§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§_-Kf§.length)
            {
               if((this.§_-Kf§[_loc2_] as §_-FU§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§_-Kf§[_loc2_] as §_-FU§).setComponentState(§_-LB§.§_-z6§);
               }
               else if((this.§_-Kf§[_loc2_] as §_-FU§).§_-x-§ == §_-LB§.§_-z6§)
               {
                  (this.§_-Kf§[_loc2_] as §_-FU§).setComponentState(§_-LB§.§_-bI§);
               }
               _loc2_++;
            }
         }
         if(this.§_-mW§ == §_-c4§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§_-Kf§.length)
            {
               if((this.§_-Kf§[_loc2_] as §_-FU§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§_-Kf§[_loc2_] as §_-FU§).§_-x-§ == §_-LB§.§_-z6§)
                  {
                     (this.§_-Kf§[_loc2_] as §_-FU§).setComponentState(§_-LB§.§_-bI§);
                  }
                  else if((this.§_-Kf§[_loc2_] as §_-FU§).§_-x-§ == §_-LB§.§_-bI§)
                  {
                     if(this.§_-Tb§().length < this.§_-M9§)
                     {
                        (this.§_-Kf§[_loc2_] as §_-FU§).setComponentState(§_-LB§.§_-z6§);
                     }
                  }
               }
               if(this.§_-Tb§().length >= this.§_-M9§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§_-Kf§.length)
                  {
                     if((this.§_-Kf§[_loc3_] as §_-FU§).§_-x-§ == §_-LB§.§_-bI§)
                     {
                        (this.§_-Kf§[_loc3_] as §_-FU§).setComponentState(§_-LB§.§_-BL§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§_-Kf§.length)
                  {
                     if((this.§_-Kf§[_loc3_] as §_-FU§).§_-x-§ == §_-LB§.§_-BL§)
                     {
                        (this.§_-Kf§[_loc3_] as §_-FU§).setComponentState(§_-LB§.§_-bI§);
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
         while(_loc2_ < this.§_-Kf§.length)
         {
            (this.§_-Kf§[_loc2_] as §_-FU§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §_-zE§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-Kf§.length)
         {
            (this.§_-Kf§[_loc1_] as §_-FU§).setComponentState(§_-LB§.§_-bI§);
            _loc1_++;
         }
      }
      
      public function §_-vG§(param1:Number) : void
      {
         this.§_-M9§ = param1;
         if(param1 == 1)
         {
            this.§_-mW§ = §_-qV§;
         }
         else
         {
            this.§_-mW§ = §_-c4§;
         }
      }
      
      public function §_-bi§(param1:Array) : void
      {
         this.§_-zE§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§_-kG§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §_-Tb§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-Kf§.length)
         {
            if((this.§_-Kf§[_loc2_] as §_-FU§).§_-x-§ == §_-LB§.§_-z6§)
            {
               _loc1_.push((this.§_-Kf§[_loc2_] as §_-FU§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
