package §`g§
{
   import flash.display.BitmapData;
   
   public class §&_§
   {
       
      
      private var §7!3§:Vector.<§]!3§>;
      
      protected var § k§:BitmapData;
      
      protected var mName:String;
      
      private var §,&§:Number = 1.0;
      
      public function §&_§(param1:BitmapData)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            super();
            do
            {
               this.§ k§ = param1;
               do
               {
                  this.§7!3§ = new Vector.<§]!3§>();
               }
               while(!_loc2_);
               
            }
            while(_loc3_ && _loc3_);
            
         }
      }
      
      public function get §3t§() : int
      {
         return this.§7!3§.length;
      }
      
      public function get §"z§() : int
      {
         return this.§ k§.width;
      }
      
      public function get §9!>§() : int
      {
         return this.§ k§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§ k§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§,&§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§,&§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(this.§ k§)
            {
               loop0:
               while(true)
               {
                  this.§ k§.dispose();
                  addr88:
                  while(true)
                  {
                     this.§ k§ = null;
                     continue loop0;
                  }
               }
            }
            while(true)
            {
               this.§7!3§ = new Vector.<§]!3§>();
               if(_loc1_ || _loc1_)
               {
                  if(_loc1_ || _loc2_)
                  {
                     break;
                  }
                  §§goto(addr88);
               }
               §§goto(addr74);
               §§goto(addr74);
            }
            return;
         }
         §§goto(addr88);
      }
      
      public function §;L§(param1:BitmapData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§ k§ = param1;
         }
      }
      
      public function §>j§(param1:§]!3§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§7!3§.push(param1);
         }
      }
      
      public function §,!<§(param1:String) : §]!3§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = Number(0);
         do
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(_loc3_)
               {
                  if(§§pop() >= this.§7!3§.length)
                  {
                     if(_loc3_)
                     {
                        return null;
                     }
                     loop1:
                     while(_loc4_ && this)
                     {
                        while(true)
                        {
                           _loc2_ = §§pop();
                           continue loop1;
                        }
                     }
                     continue;
                  }
                  if(this.§7!3§[_loc2_].mName == param1)
                  {
                     break;
                  }
                  while(true)
                  {
                     §§push(_loc2_);
                  }
               }
               while(true)
               {
                  §§push(§§pop() + 1);
                  if(!(_loc4_ && param1))
                  {
                     §§push(Number(§§pop()));
                  }
               }
            }
            §§goto(addr57);
         }
         while(_loc3_ || _loc2_);
         
         return this.§7!3§[_loc2_];
      }
      
      public function §7&§(param1:int) : §]!3§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop() < 0);
               if(!(_loc3_ && param1))
               {
                  if(§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc2_ || param1)
                        {
                           return null;
                        }
                        if(!_loc3_)
                        {
                           addr80:
                           break;
                        }
                        §§push(§§pop() >= this.§7!3§.length);
                        continue loop0;
                        if(!(_loc3_ && _loc3_))
                        {
                           continue;
                        }
                        addr93:
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr93:
                     }
                     return this.§7!3§[param1];
                  }
               }
               §§goto(addr93);
            }
         }
         §§goto(addr80);
      }
   }
}
