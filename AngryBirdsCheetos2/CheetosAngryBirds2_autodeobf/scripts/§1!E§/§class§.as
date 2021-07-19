package §1!E§
{
   import §&!F§.§3S§;
   import §<+§.§55§;
   
   public class §class§ extends §55§
   {
       
      
      private var §7Q§:String;
      
      private var §6!P§:§3S§;
      
      private var §3§:Boolean;
      
      private var §^!C§:Boolean;
      
      private var §^!<§:Vector.<String>;
      
      public function §class§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
            while(true)
            {
               this.§6!P§ = new §3S§();
               while(true)
               {
                  this.§^!C§ = false;
                  §§goto(addr76);
               }
            }
         }
         addr76:
         while(true)
         {
            this.§^!<§ = new Vector.<String>();
            if(_loc1_ || this)
            {
               if(_loc1_)
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr61:
      }
      
      public function get id() : String
      {
         return this.§7Q§;
      }
      
      public function set id(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§7Q§ = param1;
         }
      }
      
      public function get §`!b§() : int
      {
         return this.§6!P§.§"!4§();
      }
      
      public function get §06§() : §3S§
      {
         return this.§6!P§;
      }
      
      public function get verified() : Boolean
      {
         return this.§3§;
      }
      
      public function set verified(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§3§ = param1;
         }
      }
      
      public function §>!b§() : Boolean
      {
         return this.§^!C§;
      }
      
      public function §1!d§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§^!C§ = param1;
         }
      }
      
      public function §";§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§^!<§.push(param1);
         }
      }
      
      public function §8!#§() : String
      {
         return this.§^!<§.shift();
      }
      
      public function §=m§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§^!<§.splice(0,this.§^!<§.length);
         }
      }
   }
}
