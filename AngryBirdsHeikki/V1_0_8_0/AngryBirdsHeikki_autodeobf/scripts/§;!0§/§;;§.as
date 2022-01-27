package §;!0§
{
   import §-!V§.§'J§;
   
   public class §;;§
   {
      
      public static const §@!W§:int = 0;
      
      public static const §^!c§:int = 1;
      
      public static const §9F§:int = 2;
       
      
      public var §7j§:Array;
      
      public var §0Y§:int;
      
      public var §<!#§:int;
      
      public var mName:String;
      
      public var §-§:String;
      
      public function §;;§(param1:int, param2:String)
      {
         super();
         this.§<!#§ = param1;
         this.mName = param2;
         this.§7j§ = new Array();
      }
      
      public function §-9§(param1:§'J§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§7j§[this.§7j§.length] = param1;
      }
      
      public function §1!f§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§-§ = param1;
         if(this.§<!#§ == §@!W§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§7j§.length)
            {
               if((this.§7j§[_loc2_] as §'J§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§7j§[_loc2_] as §'J§).setComponentState(§"[§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§7j§[_loc2_] as §'J§).§ get§ == §"[§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§7j§[_loc2_] as §'J§).setComponentState(§"[§.§,E§);
               }
               _loc2_++;
            }
         }
         if(this.§<!#§ == §9F§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§7j§.length)
            {
               if((this.§7j§[_loc2_] as §'J§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§7j§[_loc2_] as §'J§).§ get§ == §"[§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§7j§[_loc2_] as §'J§).setComponentState(§"[§.§,E§);
                  }
                  else if((this.§7j§[_loc2_] as §'J§).§ get§ == §"[§.§,E§)
                  {
                     if(this.§^,§().length < this.§0Y§)
                     {
                        (this.§7j§[_loc2_] as §'J§).setComponentState(§"[§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§^,§().length >= this.§0Y§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§7j§.length)
                  {
                     if((this.§7j§[_loc3_] as §'J§).§ get§ == §"[§.§,E§)
                     {
                        (this.§7j§[_loc3_] as §'J§).setComponentState(§"[§.§"f§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§7j§.length)
                  {
                     if((this.§7j§[_loc3_] as §'J§).§ get§ == §"[§.§"f§)
                     {
                        (this.§7j§[_loc3_] as §'J§).setComponentState(§"[§.§,E§);
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
         while(_loc2_ < this.§7j§.length)
         {
            (this.§7j§[_loc2_] as §'J§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §8!>§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§7j§.length)
         {
            (this.§7j§[_loc1_] as §'J§).setComponentState(§"[§.§,E§);
            _loc1_++;
         }
      }
      
      public function §`!b§(param1:Number) : void
      {
         this.§0Y§ = param1;
         if(param1 == 1)
         {
            this.§<!#§ = §@!W§;
         }
         else
         {
            this.§<!#§ = §9F§;
         }
      }
      
      public function §-![§(param1:Array) : void
      {
         this.§8!>§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§1!f§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §^,§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§7j§.length)
         {
            if((this.§7j§[_loc2_] as §'J§).§ get§ == §"[§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§7j§[_loc2_] as §'J§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
