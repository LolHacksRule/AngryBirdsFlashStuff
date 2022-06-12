package §;n§
{
   import §-B§.§]!<§;
   
   public class §^!5§
   {
      
      public static const §""5§:int = 0;
      
      public static const §0"2§:int = 1;
      
      public static const §<! §:int = 2;
       
      
      public var §<"8§:Array;
      
      public var §-"$§:int;
      
      public var §6#§:int;
      
      public var mName:String;
      
      public var §8u§:String;
      
      public function §^!5§(param1:int, param2:String)
      {
         super();
         this.§6#§ = param1;
         this.mName = param2;
         this.§<"8§ = new Array();
      }
      
      public function §9!V§(param1:§]!<§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§<"8§[this.§<"8§.length] = param1;
      }
      
      public function §%"5§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§8u§ = param1;
         if(this.§6#§ == §""5§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§<"8§.length)
            {
               if((this.§<"8§[_loc2_] as §]!<§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§<"8§[_loc2_] as §]!<§).setComponentState(§^q§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§<"8§[_loc2_] as §]!<§).§9@§ == §^q§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§<"8§[_loc2_] as §]!<§).setComponentState(§^q§.§]">§);
               }
               _loc2_++;
            }
         }
         if(this.§6#§ == §<! §)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§<"8§.length)
            {
               if((this.§<"8§[_loc2_] as §]!<§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§<"8§[_loc2_] as §]!<§).§9@§ == §^q§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§<"8§[_loc2_] as §]!<§).setComponentState(§^q§.§]">§);
                  }
                  else if((this.§<"8§[_loc2_] as §]!<§).§9@§ == §^q§.§]">§)
                  {
                     if(this.§?A§().length < this.§-"$§)
                     {
                        (this.§<"8§[_loc2_] as §]!<§).setComponentState(§^q§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§?A§().length >= this.§-"$§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§<"8§.length)
                  {
                     if((this.§<"8§[_loc3_] as §]!<§).§9@§ == §^q§.§]">§)
                     {
                        (this.§<"8§[_loc3_] as §]!<§).setComponentState(§^q§.§?!0§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§<"8§.length)
                  {
                     if((this.§<"8§[_loc3_] as §]!<§).§9@§ == §^q§.§?!0§)
                     {
                        (this.§<"8§[_loc3_] as §]!<§).setComponentState(§^q§.§]">§);
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
         while(_loc2_ < this.§<"8§.length)
         {
            (this.§<"8§[_loc2_] as §]!<§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function static() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§<"8§.length)
         {
            (this.§<"8§[_loc1_] as §]!<§).setComponentState(§^q§.§]">§);
            _loc1_++;
         }
      }
      
      public function §1Z§(param1:Number) : void
      {
         this.§-"$§ = param1;
         if(param1 == 1)
         {
            this.§6#§ = §""5§;
         }
         else
         {
            this.§6#§ = §<! §;
         }
      }
      
      public function §finally§(param1:Array) : void
      {
         this.static();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§%"5§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §?A§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§<"8§.length)
         {
            if((this.§<"8§[_loc2_] as §]!<§).§9@§ == §^q§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§<"8§[_loc2_] as §]!<§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
