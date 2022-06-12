package §9!7§
{
   import §!D§.§3!6§;
   
   public class §=""§
   {
      
      public static const §3!A§:int = 0;
      
      public static const §1<§:int = 1;
      
      public static const §-!,§:int = 2;
       
      
      public var §82§:Array;
      
      public var §3"&§:int;
      
      public var §'N§:int;
      
      public var mName:String;
      
      public var §;"5§:String;
      
      public function §=""§(param1:int, param2:String)
      {
         super();
         this.§'N§ = param1;
         this.mName = param2;
         this.§82§ = new Array();
      }
      
      public function §!+§(param1:§3!6§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§82§[this.§82§.length] = param1;
      }
      
      public function §@!]§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§;"5§ = param1;
         if(this.§'N§ == §3!A§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§82§.length)
            {
               if((this.§82§[_loc2_] as §3!6§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§82§[_loc2_] as §3!6§).setComponentState(§6"0§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§82§[_loc2_] as §3!6§).§ null§ == §6"0§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§82§[_loc2_] as §3!6§).setComponentState(§6"0§.§ B§);
               }
               _loc2_++;
            }
         }
         if(this.§'N§ == §-!,§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§82§.length)
            {
               if((this.§82§[_loc2_] as §3!6§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§82§[_loc2_] as §3!6§).§ null§ == §6"0§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§82§[_loc2_] as §3!6§).setComponentState(§6"0§.§ B§);
                  }
                  else if((this.§82§[_loc2_] as §3!6§).§ null§ == §6"0§.§ B§)
                  {
                     if(this.§35§().length < this.§3"&§)
                     {
                        (this.§82§[_loc2_] as §3!6§).setComponentState(§6"0§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§35§().length >= this.§3"&§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§82§.length)
                  {
                     if((this.§82§[_loc3_] as §3!6§).§ null§ == §6"0§.§ B§)
                     {
                        (this.§82§[_loc3_] as §3!6§).setComponentState(§6"0§.§<>§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§82§.length)
                  {
                     if((this.§82§[_loc3_] as §3!6§).§ null§ == §6"0§.§<>§)
                     {
                        (this.§82§[_loc3_] as §3!6§).setComponentState(§6"0§.§ B§);
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
         while(_loc2_ < this.§82§.length)
         {
            (this.§82§[_loc2_] as §3!6§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §=R§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§82§.length)
         {
            (this.§82§[_loc1_] as §3!6§).setComponentState(§6"0§.§ B§);
            _loc1_++;
         }
      }
      
      public function §`V§(param1:Number) : void
      {
         this.§3"&§ = param1;
         if(param1 == 1)
         {
            this.§'N§ = §3!A§;
         }
         else
         {
            this.§'N§ = §-!,§;
         }
      }
      
      public function §@!k§(param1:Array) : void
      {
         this.§=R§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§@!]§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §35§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§82§.length)
         {
            if((this.§82§[_loc2_] as §3!6§).§ null§ == §6"0§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§82§[_loc2_] as §3!6§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
