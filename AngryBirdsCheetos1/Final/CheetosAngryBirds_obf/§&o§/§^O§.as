package §&o§
{
   import flash.utils.getTimer;
   
   public class §^O§
   {
       
      
      private var mName:String;
      
      private var §8"§:String;
      
      private var §`s§:String;
      
      private var §7A§:String;
      
      private var §@M§:uint;
      
      private var §#!-§:uint;
      
      private var §,E§:uint;
      
      private var §8[§:Boolean = false;
      
      public function §^O§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
         do
         {
            this.§,E§ = getTimer();
         }
         while(_loc1_);
         
      }
      
      public function get §"!K§() : Boolean
      {
         return this.§8[§;
      }
      
      public function set §"!K§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§8[§ = param1;
         }
      }
      
      public function get §=o§() : String
      {
         return this.§7A§;
      }
      
      public function set §=o§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§7A§ = param1;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.mName = param1;
         }
      }
      
      public function get § I§() : String
      {
         return this.§8"§;
      }
      
      public function set § I§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§8"§ = param1;
         }
      }
      
      public function get §"N§() : String
      {
         return this.§`s§;
      }
      
      public function set §"N§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§`s§ = param1;
         }
      }
      
      public function get §3!^§() : uint
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§@M§ = getTimer() - this.§,E§;
         }
         return this.§@M§;
      }
      
      public function get §3Q§() : uint
      {
         return this.§#!-§;
      }
      
      public function set §3Q§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§#!-§ = param1;
         }
      }
      
      public function get §-!3§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§=o§);
            while(true)
            {
               §§push(§§pop() == null);
               §§goto(addr108);
            }
            addr106:
         }
         while(true)
         {
            §§push(this.§=o§);
            if(_loc1_ || _loc2_)
            {
               §§push(§§pop().length > 0);
               if(_loc1_ || _loc1_)
               {
                  §§goto(addr66);
               }
               §§goto(addr78);
            }
            else
            {
               §§goto(addr106);
            }
            return §§pop();
            §§goto(addr113);
         }
      }
   }
}
