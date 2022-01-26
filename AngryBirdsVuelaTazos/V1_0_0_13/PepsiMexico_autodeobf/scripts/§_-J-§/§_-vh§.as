package §_-J-§
{
   import §_-58§.§_-8c§;
   
   public class §_-vh§
   {
      
      public static const §_-m§:int = 0;
      
      public static const §_-bk§:int = 1;
      
      public static const §_-XP§:int = 2;
       
      
      public var §_-j8§:Array;
      
      public var §_-6O§:int;
      
      public var §_-CV§:int;
      
      public var mName:String;
      
      public var §_-c-§:String;
      
      public function §_-vh§(param1:int, param2:String)
      {
         super();
         this.§_-CV§ = param1;
         this.mName = param2;
         this.§_-j8§ = new Array();
      }
      
      public function §_-LI§(param1:§_-8c§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§_-j8§[this.§_-j8§.length] = param1;
      }
      
      public function §_-lI§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§_-c-§ = param1;
         if(this.§_-CV§ == §_-m§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§_-j8§.length)
            {
               if((this.§_-j8§[_loc2_] as §_-8c§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§_-j8§[_loc2_] as §_-8c§).setComponentState(§_-BT§.§_-Gc§);
               }
               else if((this.§_-j8§[_loc2_] as §_-8c§).§_-rZ§ == §_-BT§.§_-Gc§)
               {
                  (this.§_-j8§[_loc2_] as §_-8c§).setComponentState(§_-BT§.§_-Oe§);
               }
               _loc2_++;
            }
         }
         if(this.§_-CV§ == §_-XP§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§_-j8§.length)
            {
               if((this.§_-j8§[_loc2_] as §_-8c§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§_-j8§[_loc2_] as §_-8c§).§_-rZ§ == §_-BT§.§_-Gc§)
                  {
                     (this.§_-j8§[_loc2_] as §_-8c§).setComponentState(§_-BT§.§_-Oe§);
                  }
                  else if((this.§_-j8§[_loc2_] as §_-8c§).§_-rZ§ == §_-BT§.§_-Oe§)
                  {
                     if(this.§_-H9§().length < this.§_-6O§)
                     {
                        (this.§_-j8§[_loc2_] as §_-8c§).setComponentState(§_-BT§.§_-Gc§);
                     }
                  }
               }
               if(this.§_-H9§().length >= this.§_-6O§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§_-j8§.length)
                  {
                     if((this.§_-j8§[_loc3_] as §_-8c§).§_-rZ§ == §_-BT§.§_-Oe§)
                     {
                        (this.§_-j8§[_loc3_] as §_-8c§).setComponentState(§_-BT§.§_-aM§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§_-j8§.length)
                  {
                     if((this.§_-j8§[_loc3_] as §_-8c§).§_-rZ§ == §_-BT§.§_-aM§)
                     {
                        (this.§_-j8§[_loc3_] as §_-8c§).setComponentState(§_-BT§.§_-Oe§);
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
         while(_loc2_ < this.§_-j8§.length)
         {
            (this.§_-j8§[_loc2_] as §_-8c§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §_-TR§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-j8§.length)
         {
            (this.§_-j8§[_loc1_] as §_-8c§).setComponentState(§_-BT§.§_-Oe§);
            _loc1_++;
         }
      }
      
      public function §_-A9§(param1:Number) : void
      {
         this.§_-6O§ = param1;
         if(param1 == 1)
         {
            this.§_-CV§ = §_-m§;
         }
         else
         {
            this.§_-CV§ = §_-XP§;
         }
      }
      
      public function §_-Il§(param1:Array) : void
      {
         this.§_-TR§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§_-lI§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §_-H9§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-j8§.length)
         {
            if((this.§_-j8§[_loc2_] as §_-8c§).§_-rZ§ == §_-BT§.§_-Gc§)
            {
               _loc1_.push((this.§_-j8§[_loc2_] as §_-8c§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
