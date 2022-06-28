package §_-MN§
{
   import §_-6C§.§_-Mu§;
   
   public class §_-oi§
   {
      
      public static const §_-Il§:int = 0;
      
      public static const §_-KR§:int = 1;
      
      public static const §_-zE§:int = 2;
       
      
      public var §_-05b§:Array;
      
      public var §_-Hx§:int;
      
      public var §_-kV§:int;
      
      public var mName:String;
      
      public var §_-za§:String;
      
      public function §_-oi§(param1:int, param2:String)
      {
         super();
         this.§_-kV§ = param1;
         this.mName = param2;
         this.§_-05b§ = new Array();
      }
      
      public function §_-QY§(param1:§_-Mu§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§_-05b§[this.§_-05b§.length] = param1;
      }
      
      public function §_-0BT§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§_-za§ = param1;
         if(this.§_-kV§ == §_-Il§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§_-05b§.length)
            {
               if((this.§_-05b§[_loc2_] as §_-Mu§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§_-05b§[_loc2_] as §_-Mu§).setComponentState(§_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§_-05b§[_loc2_] as §_-Mu§).§_-0-k§ == §_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§_-05b§[_loc2_] as §_-Mu§).setComponentState(§_-rR§.§_-5L§);
               }
               _loc2_++;
            }
         }
         if(this.§_-kV§ == §_-zE§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§_-05b§.length)
            {
               if((this.§_-05b§[_loc2_] as §_-Mu§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§_-05b§[_loc2_] as §_-Mu§).§_-0-k§ == §_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§_-05b§[_loc2_] as §_-Mu§).setComponentState(§_-rR§.§_-5L§);
                  }
                  else if((this.§_-05b§[_loc2_] as §_-Mu§).§_-0-k§ == §_-rR§.§_-5L§)
                  {
                     if(this.§_-Wr§().length < this.§_-Hx§)
                     {
                        (this.§_-05b§[_loc2_] as §_-Mu§).setComponentState(§_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§_-Wr§().length >= this.§_-Hx§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§_-05b§.length)
                  {
                     if((this.§_-05b§[_loc3_] as §_-Mu§).§_-0-k§ == §_-rR§.§_-5L§)
                     {
                        (this.§_-05b§[_loc3_] as §_-Mu§).setComponentState(§_-rR§.§_-K1§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§_-05b§.length)
                  {
                     if((this.§_-05b§[_loc3_] as §_-Mu§).§_-0-k§ == §_-rR§.§_-K1§)
                     {
                        (this.§_-05b§[_loc3_] as §_-Mu§).setComponentState(§_-rR§.§_-5L§);
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
         while(_loc2_ < this.§_-05b§.length)
         {
            (this.§_-05b§[_loc2_] as §_-Mu§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §_-02w§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-05b§.length)
         {
            (this.§_-05b§[_loc1_] as §_-Mu§).setComponentState(§_-rR§.§_-5L§);
            _loc1_++;
         }
      }
      
      public function §_-E1§(param1:Number) : void
      {
         this.§_-Hx§ = param1;
         if(param1 == 1)
         {
            this.§_-kV§ = §_-Il§;
         }
         else
         {
            this.§_-kV§ = §_-zE§;
         }
      }
      
      public function §_-6v§(param1:Array) : void
      {
         this.§_-02w§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§_-0BT§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §_-Wr§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-05b§.length)
         {
            if((this.§_-05b§[_loc2_] as §_-Mu§).§_-0-k§ == §_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§_-05b§[_loc2_] as §_-Mu§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
