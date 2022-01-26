package §_-Ys§
{
   import §_-of§.§_-Yk§;
   
   public class §_-so§
   {
      
      public static const §_-e§:int = 0;
      
      public static const §_-O5§:int = 1;
      
      public static const §_-ZX§:int = 2;
       
      
      public var §_-Or§:Array;
      
      public var §_-uA§:int;
      
      public var §_-YX§:int;
      
      public var mName:String;
      
      public var §_-b6§:String;
      
      public function §_-so§(param1:int, param2:String)
      {
         super();
         this.§_-YX§ = param1;
         this.mName = param2;
         this.§_-Or§ = new Array();
      }
      
      public function §_-bD§(param1:§_-Yk§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§_-Or§[this.§_-Or§.length] = param1;
      }
      
      public function §_-hr§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§_-b6§ = param1;
         if(this.§_-YX§ == §_-e§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§_-Or§.length)
            {
               if((this.§_-Or§[_loc2_] as §_-Yk§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§_-Or§[_loc2_] as §_-Yk§).setComponentState(§_-TM§.§_-Y2§);
               }
               else if((this.§_-Or§[_loc2_] as §_-Yk§).§_-RY§ == §_-TM§.§_-Y2§)
               {
                  (this.§_-Or§[_loc2_] as §_-Yk§).setComponentState(§_-TM§.§_-vF§);
               }
               _loc2_++;
            }
         }
         if(this.§_-YX§ == §_-ZX§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§_-Or§.length)
            {
               if((this.§_-Or§[_loc2_] as §_-Yk§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§_-Or§[_loc2_] as §_-Yk§).§_-RY§ == §_-TM§.§_-Y2§)
                  {
                     (this.§_-Or§[_loc2_] as §_-Yk§).setComponentState(§_-TM§.§_-vF§);
                  }
                  else if((this.§_-Or§[_loc2_] as §_-Yk§).§_-RY§ == §_-TM§.§_-vF§)
                  {
                     if(this.§_-E2§().length < this.§_-uA§)
                     {
                        (this.§_-Or§[_loc2_] as §_-Yk§).setComponentState(§_-TM§.§_-Y2§);
                     }
                  }
               }
               if(this.§_-E2§().length >= this.§_-uA§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§_-Or§.length)
                  {
                     if((this.§_-Or§[_loc3_] as §_-Yk§).§_-RY§ == §_-TM§.§_-vF§)
                     {
                        (this.§_-Or§[_loc3_] as §_-Yk§).setComponentState(§_-TM§.§_-wD§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§_-Or§.length)
                  {
                     if((this.§_-Or§[_loc3_] as §_-Yk§).§_-RY§ == §_-TM§.§_-wD§)
                     {
                        (this.§_-Or§[_loc3_] as §_-Yk§).setComponentState(§_-TM§.§_-vF§);
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
         while(_loc2_ < this.§_-Or§.length)
         {
            (this.§_-Or§[_loc2_] as §_-Yk§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §_-je§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-Or§.length)
         {
            (this.§_-Or§[_loc1_] as §_-Yk§).setComponentState(§_-TM§.§_-vF§);
            _loc1_++;
         }
      }
      
      public function §_-u3§(param1:Number) : void
      {
         this.§_-uA§ = param1;
         if(param1 == 1)
         {
            this.§_-YX§ = §_-e§;
         }
         else
         {
            this.§_-YX§ = §_-ZX§;
         }
      }
      
      public function §_-Mz§(param1:Array) : void
      {
         this.§_-je§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§_-hr§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §_-E2§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-Or§.length)
         {
            if((this.§_-Or§[_loc2_] as §_-Yk§).§_-RY§ == §_-TM§.§_-Y2§)
            {
               _loc1_.push((this.§_-Or§[_loc2_] as §_-Yk§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
