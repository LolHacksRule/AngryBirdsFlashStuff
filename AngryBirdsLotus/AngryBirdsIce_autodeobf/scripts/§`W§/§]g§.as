package §`W§
{
   import §[v§.§^P§;
   
   public class §]g§
   {
      
      public static const §7!>§:int = 0;
      
      public static const §0!E§:int = 1;
      
      public static const §7!2§:int = 2;
       
      
      public var §;t§:Array;
      
      public var §]M§:int;
      
      public var §@!B§:int;
      
      public var mName:String;
      
      public var §&§:String;
      
      public function §]g§(param1:int, param2:String)
      {
         super();
         this.§@!B§ = param1;
         this.mName = param2;
         this.§;t§ = new Array();
      }
      
      public function §&Y§(param1:§^P§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§;t§[this.§;t§.length] = param1;
      }
      
      public function §9?§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§&§ = param1;
         if(this.§@!B§ == §7!>§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§;t§.length)
            {
               if((this.§;t§[_loc2_] as §^P§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§;t§[_loc2_] as §^P§).setComponentState(§<r§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§;t§[_loc2_] as §^P§).§`!8§ == §<r§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§;t§[_loc2_] as §^P§).setComponentState(§<r§.§55§);
               }
               _loc2_++;
            }
         }
         if(this.§@!B§ == §7!2§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§;t§.length)
            {
               if((this.§;t§[_loc2_] as §^P§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§;t§[_loc2_] as §^P§).§`!8§ == §<r§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§;t§[_loc2_] as §^P§).setComponentState(§<r§.§55§);
                  }
                  else if((this.§;t§[_loc2_] as §^P§).§`!8§ == §<r§.§55§)
                  {
                     if(this.§=%§().length < this.§]M§)
                     {
                        (this.§;t§[_loc2_] as §^P§).setComponentState(§<r§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§=%§().length >= this.§]M§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§;t§.length)
                  {
                     if((this.§;t§[_loc3_] as §^P§).§`!8§ == §<r§.§55§)
                     {
                        (this.§;t§[_loc3_] as §^P§).setComponentState(§<r§.§?!B§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§;t§.length)
                  {
                     if((this.§;t§[_loc3_] as §^P§).§`!8§ == §<r§.§?!B§)
                     {
                        (this.§;t§[_loc3_] as §^P§).setComponentState(§<r§.§55§);
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
         while(_loc2_ < this.§;t§.length)
         {
            (this.§;t§[_loc2_] as §^P§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §7n§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§;t§.length)
         {
            (this.§;t§[_loc1_] as §^P§).setComponentState(§<r§.§55§);
            _loc1_++;
         }
      }
      
      public function §`!1§(param1:Number) : void
      {
         this.§]M§ = param1;
         if(param1 == 1)
         {
            this.§@!B§ = §7!>§;
         }
         else
         {
            this.§@!B§ = §7!2§;
         }
      }
      
      public function §;X§(param1:Array) : void
      {
         this.§7n§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§9?§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §=%§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§;t§.length)
         {
            if((this.§;t§[_loc2_] as §^P§).§`!8§ == §<r§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§;t§[_loc2_] as §^P§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
