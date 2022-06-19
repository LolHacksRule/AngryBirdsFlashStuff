package §_-9J§
{
   import §_-ES§.§_-Ng§;
   
   public class §_-L1§
   {
      
      public static const §_-EL§:int = 0;
      
      public static const §_-AA§:int = 1;
      
      public static const §_-BZ§:int = 2;
       
      
      public var §_-Fh§:Array;
      
      public var §_-XM§:int;
      
      public var §_-cR§:int;
      
      public var mName:String;
      
      public var §_-Jk§:String;
      
      public function §_-L1§(param1:int, param2:String)
      {
         super();
         this.§_-cR§ = param1;
         this.mName = param2;
         this.§_-Fh§ = new Array();
      }
      
      public function §_-CI§(param1:§_-Ng§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§_-Fh§[this.§_-Fh§.length] = param1;
      }
      
      public function §_-Er§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§_-Jk§ = param1;
         if(this.§_-cR§ == §_-EL§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§_-Fh§.length)
            {
               if((this.§_-Fh§[_loc2_] as §_-Ng§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§_-Fh§[_loc2_] as §_-Ng§).setComponentState(§_-DA§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§_-Fh§[_loc2_] as §_-Ng§).§_-Mt§ == §_-DA§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§_-Fh§[_loc2_] as §_-Ng§).setComponentState(§_-DA§.§_-MR§);
               }
               _loc2_++;
            }
         }
         if(this.§_-cR§ == §_-BZ§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§_-Fh§.length)
            {
               if((this.§_-Fh§[_loc2_] as §_-Ng§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§_-Fh§[_loc2_] as §_-Ng§).§_-Mt§ == §_-DA§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§_-Fh§[_loc2_] as §_-Ng§).setComponentState(§_-DA§.§_-MR§);
                  }
                  else if((this.§_-Fh§[_loc2_] as §_-Ng§).§_-Mt§ == §_-DA§.§_-MR§)
                  {
                     if(this.§_-P3§().length < this.§_-XM§)
                     {
                        (this.§_-Fh§[_loc2_] as §_-Ng§).setComponentState(§_-DA§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§_-P3§().length >= this.§_-XM§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§_-Fh§.length)
                  {
                     if((this.§_-Fh§[_loc3_] as §_-Ng§).§_-Mt§ == §_-DA§.§_-MR§)
                     {
                        (this.§_-Fh§[_loc3_] as §_-Ng§).setComponentState(§_-DA§.§_-La§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§_-Fh§.length)
                  {
                     if((this.§_-Fh§[_loc3_] as §_-Ng§).§_-Mt§ == §_-DA§.§_-La§)
                     {
                        (this.§_-Fh§[_loc3_] as §_-Ng§).setComponentState(§_-DA§.§_-MR§);
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
         while(_loc2_ < this.§_-Fh§.length)
         {
            (this.§_-Fh§[_loc2_] as §_-Ng§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §_-wE§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-Fh§.length)
         {
            (this.§_-Fh§[_loc1_] as §_-Ng§).setComponentState(§_-DA§.§_-MR§);
            _loc1_++;
         }
      }
      
      public function §_-Vw§(param1:Number) : void
      {
         this.§_-XM§ = param1;
         if(param1 == 1)
         {
            this.§_-cR§ = §_-EL§;
         }
         else
         {
            this.§_-cR§ = §_-BZ§;
         }
      }
      
      public function §_-Dd§(param1:Array) : void
      {
         this.§_-wE§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§_-Er§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §_-P3§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-Fh§.length)
         {
            if((this.§_-Fh§[_loc2_] as §_-Ng§).§_-Mt§ == §_-DA§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§_-Fh§[_loc2_] as §_-Ng§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
