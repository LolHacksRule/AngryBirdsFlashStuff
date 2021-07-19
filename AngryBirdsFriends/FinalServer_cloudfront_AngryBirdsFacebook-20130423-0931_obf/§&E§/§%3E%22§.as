package §&E§
{
   import §<T§.§^!Y§;
   import §<T§.§`m§;
   
   public class §>"§ extends §]6§
   {
      
      public static const §?I§:uint = 10000;
      
      public static var §&!c§:Number = 0.0;
      
      public static var §[B§:Number = 5000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §?I§ = 10000;
            do
            {
               §&!c§ = 0;
               do
               {
                  §[B§ = 5000;
               }
               while(_loc1_);
               
            }
            while(!_loc2_);
            
         }
      }
      
      private const §&!9§:int;
      
      private const §2!^§:Number;
      
      private var §@!9§:Number;
      
      public function §>"§(param1:§^!Y§, param2:§`m§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         if(_loc19_)
         {
            §§push(this);
            if(_loc19_ || this)
            {
               if(Math.random() > 0.5)
               {
                  addr89:
                  §§push(-1);
                  if(_loc19_ || this)
                  {
                  }
               }
               else
               {
                  §§push(1);
               }
               §§pop().§&!9§ = §§pop();
               loop0:
               while(true)
               {
                  addr42:
                  while(true)
                  {
                     §§push(this);
                     §§push(Math.random() * 0.2);
                     if(_loc19_ || param2)
                     {
                        §§push(§§pop() - 0.1);
                     }
                     §§pop().§2!^§ = §§pop();
                     continue loop0;
                  }
               }
            }
            §§goto(addr89);
         }
         §§goto(addr40);
      }
      
      override public function update(param1:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc2_)
         {
            §§push(this);
            §§push(this.§@!9§);
            if(!_loc5_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§@!9§ = §§pop();
         }
         §§push(this.§@!9§);
         if(_loc4_)
         {
            §§push(§§pop() / §[B§);
            if(_loc4_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(Math.PI * 4);
         if(_loc4_ || _loc2_)
         {
            §§push(§§pop() * _loc2_);
            if(!(_loc5_ && param1))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(!(_loc5_ && this))
         {
            §>!,§ += Math.cos(_loc3_) * this.§2!^§;
         }
         while(true)
         {
            §!"W§ += (§&!c§ * 10 + 2) * this.§&!9§;
            loop1:
            for(; _loc4_; while(_loc4_ || this)
            {
               §§goto(addr88);
            })
            {
               if(this.§@!9§ > 0)
               {
                  while(true)
                  {
                     §>!,§ += §&!c§;
                     if(_loc4_)
                     {
                        break;
                     }
                     continue loop1;
                  }
               }
               else
               {
                  addr88:
               }
               if(_loc4_ || this)
               {
                  this.§@!9§ = §[B§;
               }
               continue;
               return super.update(param1);
            }
         }
      }
   }
}
