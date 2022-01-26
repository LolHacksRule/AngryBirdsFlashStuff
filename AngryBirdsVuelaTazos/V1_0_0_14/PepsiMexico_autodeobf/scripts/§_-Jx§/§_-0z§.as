package §_-Jx§
{
   import §_-hf§.§_-6o§;
   
   public class §_-0z§
   {
      
      public static const §_-s4§:int = 0;
      
      public static const §_-Vc§:int = 1;
      
      public static const §_-Kt§:int = 2;
       
      
      public var §_-uf§:Array;
      
      public var §_-RZ§:int;
      
      public var §_-yc§:int;
      
      public var mName:String;
      
      public var §_-gz§:String;
      
      public function §_-0z§(param1:int, param2:String)
      {
         super();
         this.§_-yc§ = param1;
         this.mName = param2;
         this.§_-uf§ = new Array();
      }
      
      public function §_-yz§(param1:§_-6o§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§_-uf§[this.§_-uf§.length] = param1;
      }
      
      public function §_-Vn§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§_-gz§ = param1;
         if(this.§_-yc§ == §_-s4§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§_-uf§.length)
            {
               if((this.§_-uf§[_loc2_] as §_-6o§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§_-uf§[_loc2_] as §_-6o§).setComponentState(§_-Tc§.§_-WJ§);
               }
               else if((this.§_-uf§[_loc2_] as §_-6o§).§_-hB§ == §_-Tc§.§_-WJ§)
               {
                  (this.§_-uf§[_loc2_] as §_-6o§).setComponentState(§_-Tc§.§_-SQ§);
               }
               _loc2_++;
            }
         }
         if(this.§_-yc§ == §_-Kt§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§_-uf§.length)
            {
               if((this.§_-uf§[_loc2_] as §_-6o§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§_-uf§[_loc2_] as §_-6o§).§_-hB§ == §_-Tc§.§_-WJ§)
                  {
                     (this.§_-uf§[_loc2_] as §_-6o§).setComponentState(§_-Tc§.§_-SQ§);
                  }
                  else if((this.§_-uf§[_loc2_] as §_-6o§).§_-hB§ == §_-Tc§.§_-SQ§)
                  {
                     if(this.§_-lP§().length < this.§_-RZ§)
                     {
                        (this.§_-uf§[_loc2_] as §_-6o§).setComponentState(§_-Tc§.§_-WJ§);
                     }
                  }
               }
               if(this.§_-lP§().length >= this.§_-RZ§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§_-uf§.length)
                  {
                     if((this.§_-uf§[_loc3_] as §_-6o§).§_-hB§ == §_-Tc§.§_-SQ§)
                     {
                        (this.§_-uf§[_loc3_] as §_-6o§).setComponentState(§_-Tc§.§_-9Z§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§_-uf§.length)
                  {
                     if((this.§_-uf§[_loc3_] as §_-6o§).§_-hB§ == §_-Tc§.§_-9Z§)
                     {
                        (this.§_-uf§[_loc3_] as §_-6o§).setComponentState(§_-Tc§.§_-SQ§);
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
         while(_loc2_ < this.§_-uf§.length)
         {
            (this.§_-uf§[_loc2_] as §_-6o§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §_-Ip§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-uf§.length)
         {
            (this.§_-uf§[_loc1_] as §_-6o§).setComponentState(§_-Tc§.§_-SQ§);
            _loc1_++;
         }
      }
      
      public function §_-YP§(param1:Number) : void
      {
         this.§_-RZ§ = param1;
         if(param1 == 1)
         {
            this.§_-yc§ = §_-s4§;
         }
         else
         {
            this.§_-yc§ = §_-Kt§;
         }
      }
      
      public function §_-EE§(param1:Array) : void
      {
         this.§_-Ip§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§_-Vn§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §_-lP§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-uf§.length)
         {
            if((this.§_-uf§[_loc2_] as §_-6o§).§_-hB§ == §_-Tc§.§_-WJ§)
            {
               _loc1_.push((this.§_-uf§[_loc2_] as §_-6o§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
