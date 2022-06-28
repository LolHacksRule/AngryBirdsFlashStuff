package §`!0§
{
   import §4C§.§6<§;
   
   public class §8`§
   {
      
      public static const §!d§:int = 0;
      
      public static const §^a§:int = 1;
      
      public static const §else§:int = 2;
       
      
      public var §^`§:Array;
      
      public var §=w§:int;
      
      public var §[!+§:int;
      
      public var mName:String;
      
      public var §0!2§:String;
      
      public function §8`§(param1:int, param2:String)
      {
         super();
         this.§[!+§ = param1;
         this.mName = param2;
         this.§^`§ = new Array();
      }
      
      public function §^!D§(param1:§6<§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§^`§[this.§^`§.length] = param1;
      }
      
      public function §,P§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§0!2§ = param1;
         if(this.§[!+§ == §!d§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§^`§.length)
            {
               if((this.§^`§[_loc2_] as §6<§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§^`§[_loc2_] as §6<§).setComponentState(§[4§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§^`§[_loc2_] as §6<§).§>+§ == §[4§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§^`§[_loc2_] as §6<§).setComponentState(§[4§.§7X§);
               }
               _loc2_++;
            }
         }
         if(this.§[!+§ == §else§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§^`§.length)
            {
               if((this.§^`§[_loc2_] as §6<§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§^`§[_loc2_] as §6<§).§>+§ == §[4§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§^`§[_loc2_] as §6<§).setComponentState(§[4§.§7X§);
                  }
                  else if((this.§^`§[_loc2_] as §6<§).§>+§ == §[4§.§7X§)
                  {
                     if(this.§,2§().length < this.§=w§)
                     {
                        (this.§^`§[_loc2_] as §6<§).setComponentState(§[4§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§,2§().length >= this.§=w§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§^`§.length)
                  {
                     if((this.§^`§[_loc3_] as §6<§).§>+§ == §[4§.§7X§)
                     {
                        (this.§^`§[_loc3_] as §6<§).setComponentState(§[4§.§?[§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§^`§.length)
                  {
                     if((this.§^`§[_loc3_] as §6<§).§>+§ == §[4§.§?[§)
                     {
                        (this.§^`§[_loc3_] as §6<§).setComponentState(§[4§.§7X§);
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
         while(_loc2_ < this.§^`§.length)
         {
            (this.§^`§[_loc2_] as §6<§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §8s§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§^`§.length)
         {
            (this.§^`§[_loc1_] as §6<§).setComponentState(§[4§.§7X§);
            _loc1_++;
         }
      }
      
      public function §<9§(param1:Number) : void
      {
         this.§=w§ = param1;
         if(param1 == 1)
         {
            this.§[!+§ = §!d§;
         }
         else
         {
            this.§[!+§ = §else§;
         }
      }
      
      public function §&!@§(param1:Array) : void
      {
         this.§8s§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§,P§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §,2§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§^`§.length)
         {
            if((this.§^`§[_loc2_] as §6<§).§>+§ == §[4§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§^`§[_loc2_] as §6<§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
