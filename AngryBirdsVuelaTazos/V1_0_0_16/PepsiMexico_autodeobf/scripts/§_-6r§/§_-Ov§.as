package §_-6r§
{
   import §_-F1§.§_-qp§;
   
   public class §_-Ov§
   {
      
      public static const §_-GF§:int = 0;
      
      public static const §_-e4§:int = 1;
      
      public static const §_-2x§:int = 2;
       
      
      public var §_-E2§:Array;
      
      public var §_-Rd§:int;
      
      public var §_-gA§:int;
      
      public var mName:String;
      
      public var §_-OU§:String;
      
      public function §_-Ov§(param1:int, param2:String)
      {
         super();
         this.§_-gA§ = param1;
         this.mName = param2;
         this.§_-E2§ = new Array();
      }
      
      public function §_-um§(param1:§_-qp§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§_-E2§[this.§_-E2§.length] = param1;
      }
      
      public function §_-0r§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§_-OU§ = param1;
         if(this.§_-gA§ == §_-GF§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§_-E2§.length)
            {
               if((this.§_-E2§[_loc2_] as §_-qp§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§_-E2§[_loc2_] as §_-qp§).setComponentState(§_-h3§.§_-1M§);
               }
               else if((this.§_-E2§[_loc2_] as §_-qp§).§_-OG§ == §_-h3§.§_-1M§)
               {
                  (this.§_-E2§[_loc2_] as §_-qp§).setComponentState(§_-h3§.§_-sp§);
               }
               _loc2_++;
            }
         }
         if(this.§_-gA§ == §_-2x§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§_-E2§.length)
            {
               if((this.§_-E2§[_loc2_] as §_-qp§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§_-E2§[_loc2_] as §_-qp§).§_-OG§ == §_-h3§.§_-1M§)
                  {
                     (this.§_-E2§[_loc2_] as §_-qp§).setComponentState(§_-h3§.§_-sp§);
                  }
                  else if((this.§_-E2§[_loc2_] as §_-qp§).§_-OG§ == §_-h3§.§_-sp§)
                  {
                     if(this.§_-ni§().length < this.§_-Rd§)
                     {
                        (this.§_-E2§[_loc2_] as §_-qp§).setComponentState(§_-h3§.§_-1M§);
                     }
                  }
               }
               if(this.§_-ni§().length >= this.§_-Rd§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§_-E2§.length)
                  {
                     if((this.§_-E2§[_loc3_] as §_-qp§).§_-OG§ == §_-h3§.§_-sp§)
                     {
                        (this.§_-E2§[_loc3_] as §_-qp§).setComponentState(§_-h3§.§_-By§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§_-E2§.length)
                  {
                     if((this.§_-E2§[_loc3_] as §_-qp§).§_-OG§ == §_-h3§.§_-By§)
                     {
                        (this.§_-E2§[_loc3_] as §_-qp§).setComponentState(§_-h3§.§_-sp§);
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
         while(_loc2_ < this.§_-E2§.length)
         {
            (this.§_-E2§[_loc2_] as §_-qp§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §_-ql§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-E2§.length)
         {
            (this.§_-E2§[_loc1_] as §_-qp§).setComponentState(§_-h3§.§_-sp§);
            _loc1_++;
         }
      }
      
      public function §_-bQ§(param1:Number) : void
      {
         this.§_-Rd§ = param1;
         if(param1 == 1)
         {
            this.§_-gA§ = §_-GF§;
         }
         else
         {
            this.§_-gA§ = §_-2x§;
         }
      }
      
      public function §_-9l§(param1:Array) : void
      {
         this.§_-ql§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§_-0r§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §_-ni§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-E2§.length)
         {
            if((this.§_-E2§[_loc2_] as §_-qp§).§_-OG§ == §_-h3§.§_-1M§)
            {
               _loc1_.push((this.§_-E2§[_loc2_] as §_-qp§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
